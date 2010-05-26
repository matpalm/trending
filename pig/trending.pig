-- EC2:   pig -p input=000 -p output=001 -p para=5 trending.pig
-- LOCAL: pig -x local -p input=000 -p output=001 -p piggybankjar=/home/mat/dev/pig/piggybank.jar trending.pig

%default para 1;
--%default piggybankjar /usr/lib/pig/contrib/piggybank/java/piggybank.jar
%default piggybankjar /home/mat/dev/pig/piggybank.jar

register $piggybankjar

-- load current model
-- append 0 frequency as indicator of, potentially, not requiring update
raw_model = load 'trending/model/$input' as (key:chararray, n:int, m:double, ms:double);
model = foreach raw_model generate key, n, m, ms, 0 as f;

-- load next chunk, expect a single field of text and build frequency table of ngrams
next_chunk = load 'trending/chunks/$input';
define ngramer `ruby ngram.rb 3 include_shorter` cache('trending/ngram.rb#ngram.rb');
ngrams = stream next_chunk through ngramer as (key:chararray);
ngrams_grouped = group ngrams by key PARALLEL $para;
ngram_freq = foreach ngrams_grouped generate group as key, SIZE(ngrams) as f;
--store ngram_freq into 'ngram_freq';

-- generate a seed list of keys for next chunk as we might not have seen some of these entries before
seed_values = foreach ngram_freq generate key, 0 as n, 0.0 as m, 0.0 as ms, f;

-- union seed values with model 
-- this is clumsy as it relies on MAX to decide the 'correct' values for each field. urgh.
-- TODO: since upgrading to pig 0.5 this can now be an outer join
model_plus_seed = union model, seed_values;
model_plus_seed2 = group model_plus_seed by key PARALLEL $para;
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
ordered_fft = order key_f_fft by f desc PARALLEL $para;
top_fft = limit ordered_fft 100 PARALLEL $para;
store top_fft into 'trending/fft/$input';

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
store model_n1 into 'trending/model/$output';

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

-- sort, limit and store
trending_sorted = order trending2 by normalised_trend_value desc PARALLEL $para;
top_trending = limit trending_sorted 100 PARALLEL $para;
store top_trending into 'trending/trending/$input';
