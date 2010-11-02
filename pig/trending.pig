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
tokens = stream next_chunk through tokenizer as (token:chararray);
tokens_grouped = group tokens by token PARALLEL $para;
chunk = foreach tokens_grouped generate group as token, SIZE(tokens) as freq;

chunk_debug = order chunk by freq desc;
store chunk_debug into 'data/debug/chunk_$input';

-- fold chunk into model
cogrouped = cogroup model by token, chunk by token;
joined = foreach cogrouped generate flatten((IsEmpty(model) ? null : model)), flatten((IsEmpty(chunk) ? null : chunk));
define folder `ruby fold.rb` cache('data/fold.rb#fold.rb');
model_n1_with_state = stream joined through folder as (token:chararray, num_occurences:int, mean:float, mean_sqrs:float, freq:int, state:chararray);

-- filter out elements requiring a trending check
requires_trending_check = filter model_n1_with_state by state=='changed';

-- store model_n1
model_n1 = foreach model_n1_with_state generate token,num_occurences,mean,mean_sqrs;
-- TODO: cull values who's mean has dropped below a set threshold
store model_n1 into 'data/model/$output';

-- calculate trending
trending = foreach requires_trending_check {
	 sd_lhs = num_occurences * mean_sqrs;
	 sd_rhs = num_occurences * (mean*mean);
	 sd = sqrt( (sd_lhs-sd_rhs) / num_occurences );
	 fraction_of_sd_over_mean = ( sd==0 ? 0 : (freq-mean)/sd);
	 generate token, freq, num_occurences, mean, sd as sd, fraction_of_sd_over_mean as trending_score;  
--	 generate token, (float)fraction_of_sd_over_mean as trending_score;  
};
positive_trending = filter trending by trending_score > 0;
trending_sorted = order positive_trending by trending_score desc PARALLEL $para;
store trending_sorted into 'data/trending/$input';
--top_trending = limit trending_sorted 500 PARALLEL $para;
--store top_trending into 'data/trending/$input';
