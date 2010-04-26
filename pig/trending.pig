-- pig -x local -param model_in=model.00 -param model_out=model.01 -param next_chunk=2grams_over_day.test.part00 trending.pig

-- load sqrt and log10 functions
register /home/mat/dev/ec2/from_aws_elastic/piggybank.jar;
-- register /home/hadoop/lib/pig/piggybank.jar;

--TODO ngram stuff in this script too!

-- load current model
raw_model = load '$model_in' as (key:chararray, m:double, ms:double, sd:double, n:int);
--test = load 's3://matpalm/test' as (n:int);
model = foreach raw_model generate key, m, ms, sd, n, 0 as f;

-- load next 1hr chunk, expect just keys in any order, without timestamps or anything
next_block = load '$next_chunk' as (key:chararray);
next_block_grouped = group next_block by key;
next_block_freq = foreach next_block_grouped generate group as key, SIZE(next_block) as f;

-- generate a seed list of keys from next block, we might not have seen some of these entries before
seed_values = foreach next_block_freq generate key, 0.0 as m, 0.0 as ms, 0.0 as sd, 0 as n, f;

-- inject these seed values into the model (seems clumsy but is there a better way?)
-- especially clumsy is the reliance on MAX to get the correct values in each case. urgh.
-- all this because we cant do outer joins later...
model_plus_seed = union model, seed_values;
model_plus_seed2 = group model_plus_seed by key;
model_n = foreach model_plus_seed2 generate 
	group as key, 
	MAX(model_plus_seed.m) as m,
	MAX(model_plus_seed.ms) as ms,
	MAX(model_plus_seed.sd) as sd,
	MAX(model_plus_seed.n) as n,
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
model_n_05 = foreach to_update {
	m2 = ((n*m)+f)/(n+1);
	ms2 = ((n*ms)+(f*f))/(n+1);
	generate key, m2 as m, ms2 as ms, sd, n, f;
}
model_n1 = foreach model_n_05 {
	sd_lhs = (n+1) * ms;
	sd_rhs = (n+1) * (m*m);	
	sd2 = (n==0 ? 0 : org.apache.pig.piggybank.evaluation.math.SQRT((sd_lhs-sd_rhs)/(n+0.000000001)));
	generate key, m, ms, sd2 as sd, n+1, f;
}

-- store this model for next time
-- (includes freq but will be dropped by next load)
to_store = union model_n1, not_to_update;
store to_store into '$model_out';

-- calculate trending scores
calc_min_trending = foreach model_n1 {
	min_trend_value = m + (3*sd);
	generate key, f, min_trend_value as min_trend_value, f / min_trend_value as percent_over_trend;
}
store calc_min_trending into 'calc_min_trending.$model_in';

-- filter those with a positive trending percentage
trending = filter calc_min_trending by percent_over_trend > 1;
-- scale by log of frequency to get final score
trending2 = foreach trending {
	normalised_trend_value = org.apache.pig.piggybank.evaluation.math.LOG10(f) * percent_over_trend;
	generate key, min_trend_value, percent_over_trend, normalised_trend_value as ntv;
}
trending_sorted = order trending2 by ntv desc;
store trending_sorted into 'trending.$model_in';



















