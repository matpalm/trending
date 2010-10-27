
register $pbjar

-- load data
raw_model = load 'model/$input' as (token:chararray, mean:float, mean_sqrs:float);
model_n = foreach raw_model generate token, (float)0 as freq, mean, mean_sqrs;
chunk = load 'chunks/$input' as (token:chararray, freq:int);  

-- model with 0 values for previously not seen items from chunks
model_seed = foreach chunk generate token, freq as freq, (float)0 as mean, (float)0 as mean_sqrs;
model_plus_seed = union model_n, model_seed;
model_plus_seed2 = group model_plus_seed by token;
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
store model_n1 into 'model/$output';  

-- calculate trending						      
possibly_trending = filter model_n1_with_freq by freq>0;      
trending = foreach possibly_trending {	      	 	            
	 sd_lhs = $iter * mean_sqrs;					      
	 sd_rhs = $iter * (mean*mean);							      
	 sd = ( $iter==0 ? 0 : org.apache.pig.piggybank.evaluation.math.SQRT((sd_lhs-sd_rhs)/$iter);
	 fraction_of_sd_over_mean = ( sd==0 ? 0 : (freq-mean)/sd);
	 generate token, freq, mean, sd as sd, fraction_of_sd_over_mean as trending_score;  
};	 	  	       	     	         
trending_sorted = order trending by trending_score desc;      
top_trending = limit trending_sorted 100;	   	            
store top_trending into 'trending/$input';