
-- pig -x local -param model_in=model.00 -param model_out=model.01 -param next_chunk=2grams_over_day.test.part00 trending.pig

-- load sqrt and log10 functions
--- for local 
register piggybank.jar;
--- for aws elastic map reduce
-- register /home/hadoop/lib/pig/piggybank.jar;

-- load current model
-- append 0 frequency as indicator of, potentially, not requiring update
raw_model = load '$model_in' as (key:chararray, n:int, m:double, ms:double);
--raw_model = load 's3://matpalm/test' as (n:int);
model = foreach raw_model generate key, n, m, ms, 0 as f;

-- load next chunk, expect a single field of text and build frequency table of ngrams
next_chunk = load '$next_chunk';
define ngramer `ngram.rb` ship('ngram.rb');
ngrams = stream next_chunk through ngramer as (key:chararray);
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

-- now split into two relations; 
-- one requiring update (current for this round)
-- the other to pass through (no contribu from this round)
split model_n into to_update if f>0, not_to_update if f==0;

-- generate n+1 model
-- note because of pig bug https://issues.apache.org/jira/browse/PIG-747
-- we need to update m, ms in one step and sd (which relies on new m, ms values) in another step
-- also ? is not short circuited so had to use n+0.000001 for denom since rhs is evaled
-- even when n==0
model_n1 = foreach to_update {
	m2  = ((n*m)+f)/(n+1);
	ms2 = ((n*ms)+(f*f))/(n+1);
	generate key, n+1 as n, m2 as m, ms2 as ms, f;
}

-- store this model for next time
-- (includes freq but will be dropped by next load)
to_store = union model_n1, not_to_update;
store to_store into '$model_out';

-- filter out to only include those that could be trending 
-- (ie have more than one record; ie those that have been seen before this chunk)
requiring_trending_check = filter model_n1 by n>1;

-- calculate trending scores
calc_min_trending = foreach requiring_trending_check {
	sd_lhs = n * ms;
	sd_rhs = n * (m*m);	
	sd = org.apache.pig.piggybank.evaluation.math.SQRT((sd_lhs-sd_rhs)/n);
	min_trend_value = m + (3*sd);
	generate key, f, m as mean, sd as std_dev, min_trend_value as min_trend_value, f / min_trend_value as percent_over_trend;
}
-- for debugging!!
store calc_min_trending into 'calc_min_trending.$model_in';

-- filter those with a positive trending percentage
trending = filter calc_min_trending by percent_over_trend > 1;

-- scale by log of frequency to get final score
trending2 = foreach trending {
	normalised_trend_value = org.apache.pig.piggybank.evaluation.math.LOG10(f) * percent_over_trend;
	generate key, min_trend_value, percent_over_trend, normalised_trend_value as normalised_trend_value;
}

-- store and store (todo: limit to top N?)
trending_sorted = order trending2 by normalised_trend_value desc;
store trending_sorted into 'trending.$model_in';



















