-- see run_iter.rb which builds a command line to calling this script..

-- when building inital model (precull) use a cull value of 0
-- EC2:   pig -p input=000 -p cull=0 -p output=001 -p para=5 trending.pig
-- LOCAL: pig -x local -p input=000 -p cull=0 -p output=001 -p piggybankjar=/home/mat/dev/pig/piggybank.jar trending.pig
-- once past the culling point (say 10 iterations) use a cull value of input - culling_period
-- EC2:   pig -p input=015 -p cull=5 -p output=016 -p para=5 trending.pig

register $pbjar

-- load current model
raw_model = load 'data/model/$input' as (token:chararray, mean:float, mean_sqrs:float);
model_n = foreach raw_model generate token, (float)0 as freq, mean, mean_sqrs;

-- load next chunk, expect a single field of text and build frequency table of ngrams
-- load next chunk, expect a single field of text and build frequency table of ngrams
next_chunk = load 'data/chunks/$input';
define ngramer `ruby ngram.rb 3 include_shorter` cache('data/ngram.rb#ngram.rb');
ngrams = stream next_chunk through ngramer as (key:chararray);
ngrams_grouped = group ngrams by key PARALLEL $para;
chunk = foreach ngrams_grouped generate group as token, SIZE(ngrams) as freq;

-- model with 0 values for previously not seen items from chunks
model_seed = foreach chunk generate token, freq as freq, (float)0 as mean, (float)0 as mean_sqrs;
model_plus_seed = union model_n, model_seed;
model_plus_seed2 = group model_plus_seed by token PARALLEL $para;
-- clumsy but works, each field can be calc'd (correctly, mind you) by max!
model_n_with_chunk = foreach model_plus_seed2 generate 
       group as token, 
       MAX(model_plus_seed.freq) as freq,
       MAX(model_plus_seed.mean) as mean,
       MAX(model_plus_seed.mean_sqrs) as mean_sqrs;

-- generate new mean and mean of squares
model_n1_with_freq = foreach model_n_with_chunk {
       mean2  = (($iter*mean)+freq)/($iter+1);
       mean_sqrs2 = (($iter*mean_sqrs)+(freq*freq))/($iter+1);
       generate token, freq, mean2 as mean, mean_sqrs2 as mean_sqrs;
}      		       	     	      	    	       
model_n1 = foreach model_n1_with_freq generate token,mean,mean_sqrs;
-- TODO: cull values who's mean has dropped below a set threshold
store model_n1 into 'data/model/$output';

-- calculate trending		      
possibly_trending = filter model_n1_with_freq by freq>0;      
trending = foreach possibly_trending {
	 sd_lhs = $iter * mean_sqrs;
	 sd_rhs = $iter * (mean*mean);
	 sd = ( $iter==0 ? 0 : org.apache.pig.piggybank.evaluation.math.SQRT((sd_lhs-sd_rhs)/$iter) );
	 fraction_of_sd_over_mean = ( sd==0 ? 0 : (freq-mean)/sd);
--	 generate token, freq, mean, sd as sd, fraction_of_sd_over_mean as trending_score;  
	 generate token, fraction_of_sd_over_mean as trending_score;  
};
trending_sorted = order trending by trending_score desc PARALLEL $para;
top_trending = limit trending_sorted 100 PARALLEL $para;
store top_trending into 'data/trending/$input';
