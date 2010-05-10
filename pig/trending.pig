-- pig -x local -param model_in=model.00 -param model_out=model.01 -param next_chunk=2grams_over_day.test.part00 trending.pig

%default piggybankjar piggybank.jar

-- load sqrt and log10 functions
register $piggybankjar
--piggybank.jar;
--- for aws elastic map reduce
--register /home/hadoop/lib/pig/piggybank.jar;

-- load current model
-- append 0 frequency as indicator of, potentially, not requiring update
raw_model = load '$root_path/model/$input' as (key:chararray, n:int, m:double, ms:double);
model = foreach raw_model generate key, n, m, ms, 0 as f;

-- load next chunk, expect a single field of text and build frequency table of ngrams
next_chunk = load '$root_path/chunks/$input';
define unigramer `ruby ngram.rb 1` cache('$root_path/ngram.rb#ngram.rb');
define bigramer  `ruby ngram.rb 2` cache('$root_path/ngram.rb#ngram.rb');
define trigramer `ruby ngram.rb 3` cache('$root_path/ngram.rb#ngram.rb');
unigrams = stream next_chunk through unigramer as (key:chararray);
bigrams  = stream next_chunk through bigramer as (key:chararray);
trigrams = stream next_chunk through trigramer as (key:chararray);
ngrams = union unigrams,bigrams,trigrams;
ngrams_grouped = group ngrams by key;
ngram_freq = foreach ngrams_grouped generate group as key, SIZE(ngrams) as f;

-- generate a seed list of keys for next chunk as we might not have seen some of these entries before
seed_values = foreach ngram_freq generate key, 0 as n, 0.0 as m, 0.0 as ms, f;

-- union seed values with model 
-- this is clumsy as it relies on MAX to decide the 'correct' values for each field. urgh.
-- all this because we cant do outer joins in pig 0.3.0 (todo: try with pig 0.5, cloudera cdh2?)
model_plus_seed = union model, seed_values;
model_plus_seed2 = group model_plus_seed by key;
model_n = foreach model_plus_seed2 generate 
	group as key, 
	MAX(model_plus_seed.n) as n,
	MAX(model_plus_seed.m) as m,
	MAX(model_plus_seed.ms) as ms,
	MAX(model_plus_seed.f) as f;

-- dump the top20 items by frequency
-- that are occuring for the first time
frequent_first_time = filter model_n by n==0;
key_f_fft = foreach frequent_first_time generate key,f;
ordered_fft = order key_f_fft by f desc;
top_fft = limit ordered_fft 100;
store top_fft into '$root_path/fft/$input';

-- now split into two relations; 
-- one requiring update (current for this round)
-- the other to pass through (no contribu from this round)
split model_n into to_update if f>0, not_to_update if f==0;

-- generate n+1 model
-- note because of pig bug https://issues.apache.org/jira/browse/PIG-747
-- we need to update m, ms in one step and sd (which relies on new m, ms values) in another step
-- also ? is not short circuited so had to use n+0.000001 for denom since rhs is evaled
-- even when n==0
updated = foreach to_update {
	m2  = ((n*m)+f)/(n+1);
	ms2 = ((n*ms)+(f*f))/(n+1);
	generate key, n+1 as n, m2 as m, ms2 as ms, f;
}

-- store this model for next time
-- (includes freq but will be dropped by next load)
model_n1 = union updated, not_to_update;
store model_n1 into '$root_path/model/$output';

-- filter out to only include those that could be trending 
-- (ie have more than one record; ie those that have been seen before this chunk)
requiring_trending_check = filter updated by n>1;

-- calculate trending scores
calc_min_trending = foreach requiring_trending_check {
	sd_lhs = n * ms;
	sd_rhs = n * (m*m);	
	sd = org.apache.pig.piggybank.evaluation.math.SQRT((sd_lhs-sd_rhs)/n);
	min_trend_value = m + (2*sd);
	generate key, f, m as mean, sd as std_dev, min_trend_value as min_trend_value, f / min_trend_value as percent_over_trend;
}

-- filter those with a positive trending percentage
trending = filter calc_min_trending by percent_over_trend > 1;

-- scale by log of frequency to get final score
-- todo: not sure if this worth doing?
trending2 = foreach trending {
	normalised_trend_value = org.apache.pig.piggybank.evaluation.math.LOG10(f) * percent_over_trend;
	generate key, min_trend_value, percent_over_trend, normalised_trend_value as normalised_trend_value;
}

-- workaround for pig bug re: sorting empty relation
trending_dummy = load '$root_path/trending/dummy' as (key:chararray, n:int, m:double, ms:double);
trending2_plus_dummy = union trending2, trending_dummy;
dump trending2_plus_dummy;

-- sort, limit and store
trending_sorted = order trending2_plus_dummy by normalised_trend_value desc;
top_trending = limit trending_sorted 100;

-- need to inject a dummy row, saving an empty relation cause grief. (PIG MR bug)
store top_trending into '$root_path/trending/$input';
