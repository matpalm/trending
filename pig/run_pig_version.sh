set -x
rm model.* calc_min_trending.model* trending.model*
touch model.000
time pig -x local -param model_in=model.000 -param model_out=model.001 -param next_chunk=chunks/000 trending.pig
wc -l trending.model.000
touch model.001
time pig -x local -param model_in=model.001 -param model_out=model.002 -param next_chunk=chunks/001 trending.pig
wc -l trending.model.001
touch model.002
time pig -x local -param model_in=model.002 -param model_out=model.003 -param next_chunk=chunks/002 trending.pig
wc -l trending.model.002
touch model.003
time pig -x local -param model_in=model.003 -param model_out=model.004 -param next_chunk=chunks/003 trending.pig
wc -l trending.model.003
touch model.004
time pig -x local -param model_in=model.004 -param model_out=model.005 -param next_chunk=chunks/004 trending.pig
wc -l trending.model.004
touch model.005
time pig -x local -param model_in=model.005 -param model_out=model.006 -param next_chunk=chunks/005 trending.pig
wc -l trending.model.005
touch model.006
time pig -x local -param model_in=model.006 -param model_out=model.007 -param next_chunk=chunks/006 trending.pig
wc -l trending.model.006
touch model.007
time pig -x local -param model_in=model.007 -param model_out=model.008 -param next_chunk=chunks/007 trending.pig
wc -l trending.model.007
touch model.008
time pig -x local -param model_in=model.008 -param model_out=model.009 -param next_chunk=chunks/008 trending.pig
wc -l trending.model.008
touch model.009
time pig -x local -param model_in=model.009 -param model_out=model.010 -param next_chunk=chunks/009 trending.pig
wc -l trending.model.009
touch model.010
time pig -x local -param model_in=model.010 -param model_out=model.011 -param next_chunk=chunks/010 trending.pig
wc -l trending.model.010
touch model.011
time pig -x local -param model_in=model.011 -param model_out=model.012 -param next_chunk=chunks/011 trending.pig
wc -l trending.model.011
touch model.012
time pig -x local -param model_in=model.012 -param model_out=model.013 -param next_chunk=chunks/012 trending.pig
wc -l trending.model.012
touch model.013
time pig -x local -param model_in=model.013 -param model_out=model.014 -param next_chunk=chunks/013 trending.pig
wc -l trending.model.013
touch model.014
time pig -x local -param model_in=model.014 -param model_out=model.015 -param next_chunk=chunks/014 trending.pig
wc -l trending.model.014
touch model.015
time pig -x local -param model_in=model.015 -param model_out=model.016 -param next_chunk=chunks/015 trending.pig
wc -l trending.model.015
touch model.016
time pig -x local -param model_in=model.016 -param model_out=model.017 -param next_chunk=chunks/016 trending.pig
wc -l trending.model.016
touch model.017
time pig -x local -param model_in=model.017 -param model_out=model.018 -param next_chunk=chunks/017 trending.pig
wc -l trending.model.017
touch model.018
time pig -x local -param model_in=model.018 -param model_out=model.019 -param next_chunk=chunks/018 trending.pig
wc -l trending.model.018
touch model.019
time pig -x local -param model_in=model.019 -param model_out=model.020 -param next_chunk=chunks/019 trending.pig
wc -l trending.model.019
touch model.020
time pig -x local -param model_in=model.020 -param model_out=model.021 -param next_chunk=chunks/020 trending.pig
wc -l trending.model.020
touch model.021
time pig -x local -param model_in=model.021 -param model_out=model.022 -param next_chunk=chunks/021 trending.pig
wc -l trending.model.021
touch model.022
time pig -x local -param model_in=model.022 -param model_out=model.023 -param next_chunk=chunks/022 trending.pig
wc -l trending.model.022
touch model.023
time pig -x local -param model_in=model.023 -param model_out=model.024 -param next_chunk=chunks/023 trending.pig
wc -l trending.model.023
touch model.024
time pig -x local -param model_in=model.024 -param model_out=model.025 -param next_chunk=chunks/024 trending.pig
wc -l trending.model.024
touch model.025
time pig -x local -param model_in=model.025 -param model_out=model.026 -param next_chunk=chunks/025 trending.pig
wc -l trending.model.025
touch model.026
time pig -x local -param model_in=model.026 -param model_out=model.027 -param next_chunk=chunks/026 trending.pig
wc -l trending.model.026
touch model.027
time pig -x local -param model_in=model.027 -param model_out=model.028 -param next_chunk=chunks/027 trending.pig
wc -l trending.model.027
touch model.028
time pig -x local -param model_in=model.028 -param model_out=model.029 -param next_chunk=chunks/028 trending.pig
wc -l trending.model.028
touch model.029
time pig -x local -param model_in=model.029 -param model_out=model.030 -param next_chunk=chunks/029 trending.pig
wc -l trending.model.029
touch model.030
time pig -x local -param model_in=model.030 -param model_out=model.031 -param next_chunk=chunks/030 trending.pig
wc -l trending.model.030
touch model.031
time pig -x local -param model_in=model.031 -param model_out=model.032 -param next_chunk=chunks/031 trending.pig
wc -l trending.model.031
touch model.032
time pig -x local -param model_in=model.032 -param model_out=model.033 -param next_chunk=chunks/032 trending.pig
wc -l trending.model.032
touch model.033
time pig -x local -param model_in=model.033 -param model_out=model.034 -param next_chunk=chunks/033 trending.pig
wc -l trending.model.033
touch model.034
time pig -x local -param model_in=model.034 -param model_out=model.035 -param next_chunk=chunks/034 trending.pig
wc -l trending.model.034
touch model.035
time pig -x local -param model_in=model.035 -param model_out=model.036 -param next_chunk=chunks/035 trending.pig
wc -l trending.model.035
touch model.036
time pig -x local -param model_in=model.036 -param model_out=model.037 -param next_chunk=chunks/036 trending.pig
wc -l trending.model.036
touch model.037
time pig -x local -param model_in=model.037 -param model_out=model.038 -param next_chunk=chunks/037 trending.pig
wc -l trending.model.037
touch model.038
time pig -x local -param model_in=model.038 -param model_out=model.039 -param next_chunk=chunks/038 trending.pig
wc -l trending.model.038
touch model.039
time pig -x local -param model_in=model.039 -param model_out=model.040 -param next_chunk=chunks/039 trending.pig
wc -l trending.model.039
touch model.040
time pig -x local -param model_in=model.040 -param model_out=model.041 -param next_chunk=chunks/040 trending.pig
wc -l trending.model.040
touch model.041
time pig -x local -param model_in=model.041 -param model_out=model.042 -param next_chunk=chunks/041 trending.pig
wc -l trending.model.041
touch model.042
time pig -x local -param model_in=model.042 -param model_out=model.043 -param next_chunk=chunks/042 trending.pig
wc -l trending.model.042
touch model.043
time pig -x local -param model_in=model.043 -param model_out=model.044 -param next_chunk=chunks/043 trending.pig
wc -l trending.model.043
touch model.044
time pig -x local -param model_in=model.044 -param model_out=model.045 -param next_chunk=chunks/044 trending.pig
wc -l trending.model.044
touch model.045
time pig -x local -param model_in=model.045 -param model_out=model.046 -param next_chunk=chunks/045 trending.pig
wc -l trending.model.045
touch model.046
time pig -x local -param model_in=model.046 -param model_out=model.047 -param next_chunk=chunks/046 trending.pig
wc -l trending.model.046
touch model.047
time pig -x local -param model_in=model.047 -param model_out=model.048 -param next_chunk=chunks/047 trending.pig
wc -l trending.model.047
touch model.048
time pig -x local -param model_in=model.048 -param model_out=model.049 -param next_chunk=chunks/048 trending.pig
wc -l trending.model.048
touch model.049
time pig -x local -param model_in=model.049 -param model_out=model.050 -param next_chunk=chunks/049 trending.pig
wc -l trending.model.049
touch model.050
time pig -x local -param model_in=model.050 -param model_out=model.051 -param next_chunk=chunks/050 trending.pig
wc -l trending.model.050
