-- see lib/run_iteration.rb which builds a command line to call this script
register $pbjar
DEFINE log10 org.apache.pig.piggybank.evaluation.math.LOG10();
DEFINE sqrt org.apache.pig.piggybank.evaluation.math.SQRT();

-- load current model
model = load 'data/model/$input' as (token:chararray, num_occurences:int, mean:float, mean_sqrs:float);

-- load next chunk, each record is chunk of text
next_chunk = load 'data/chunks/$input';

-- tokenize chunk
define tokenizer `python tokenizer.py` cache('data/tokenizer.py#tokenizer.py');
doc_ids_tokens = stream next_chunk through tokenizer as (doc_id:int, token:chararray);
distinct_doc_ids_tokens = distinct doc_ids_tokens;
just_tokens = foreach distinct_doc_ids_tokens generate token as token;
tokens_grouped = group just_tokens by token PARALLEL $para;
chunk = foreach tokens_grouped generate group as token, SIZE(just_tokens) as freq;

--chunk_debug = order chunk by freq desc; --DEBUG
store chunk into 'data/debug/chunk_$input'; --DEBUG

-- cogroup model with chunk
cogrouped = cogroup model by token, chunk by token;

-- break into three relations
-- 1) entries where token just the model, these continue to next iteration
-- 2) entries where token just the chunk, these contribute new model entries
-- 3) entries where token in both, these need a trending check and to have chunk folded into model 
split cogrouped into
      just_model_grped if IsEmpty(chunk),
      just_chunk_grped if IsEmpty(model),
      in_both_grped    if not IsEmpty(chunk) and not IsEmpty(model);

-- 1) entries where token just the model, these continue to next iteration
model_n1__just_model = foreach just_model_grped generate flatten(model);

-- 2) entries where token just the chunk, these contribute new model entries
just_chunk_entries = foreach just_chunk_grped generate flatten(chunk);
model_n1__just_chunk = foreach just_chunk_entries generate token, 1, freq, freq*freq;

-- 3) entries where token in both, these need a trending check and to have chunk folded into model 
in_both_flat = foreach in_both_grped generate flatten(model), flatten(chunk);

-- first do trending check
-- note comparison of freq of iter:n is done against mean/sd of iter:n-1
trending = foreach in_both_flat {
	 sd_lhs = num_occurences * mean_sqrs;
	 sd_rhs = num_occurences * (mean*mean);
	 sd = sqrt( (sd_lhs-sd_rhs) / num_occurences ); 
	 fraction_of_sd_over_mean = ( sd==0 ? 0 : (freq-mean)/sd );
	 generate model::token as token, fraction_of_sd_over_mean as trending_score, freq, mean, sd;
--	 generate model::token as token, fraction_of_sd_over_mean as trending_score;
}
trending_sorted = order trending by trending_score desc PARALLEL $para;
store trending_sorted into 'data/trending/$input';
--positive_trending = filter trending by trending_score > 0;
--trending_sorted = order positive_trending by trending_score desc PARALLEL $para;
--top_trending = limit trending_sorted 1000 PARALLEL $para;
--store top_trending into 'data/trending/$input';

-- now merge trending scores per token back to which documents they came from to give a trending score per document
--doc_id_token_score = join distinct_doc_ids_tokens by token, top_trending by token;
--doc_id_score = foreach doc_id_token_score generate doc_id, trending_score as score;
--doc_id_scores = group doc_id_score by doc_id;
--doc_id_total_score = foreach doc_id_scores generate group as doc_id, SUM(doc_id_score.score) as total_score;
--doc_id_total_score_sorted = order doc_id_total_score by total_score desc;
--top_doc_id_total_score = limit doc_id_total_score_sorted 100;
--store top_doc_id_total_score into 'data/trending_docs/$input';

-- then fold chunk into model
model_n1__folded = foreach in_both_flat {
	 new_total = (mean * num_occurences) + freq;
	 new_total_sqrs = (mean_sqrs * num_occurences) + (freq*freq);
	 num_occurences = num_occurences + 1;
	 mean = new_total / num_occurences;
	 mean_sqrs = new_total_sqrs / num_occurences;
	 generate model::token, num_occurences, mean, mean_sqrs;
};

-- combine all three contribs to make model_n1
model_n1 = union model_n1__just_model, model_n1__just_chunk, model_n1__folded;
-- TODO: cull values who's mean has dropped below a set threshold
store model_n1 into 'data/model/$output';

