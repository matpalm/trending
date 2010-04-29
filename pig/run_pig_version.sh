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
touch model.051
time pig -x local -param model_in=model.051 -param model_out=model.052 -param next_chunk=chunks/051 trending.pig
wc -l trending.model.051
touch model.052
time pig -x local -param model_in=model.052 -param model_out=model.053 -param next_chunk=chunks/052 trending.pig
wc -l trending.model.052
touch model.053
time pig -x local -param model_in=model.053 -param model_out=model.054 -param next_chunk=chunks/053 trending.pig
wc -l trending.model.053
touch model.054
time pig -x local -param model_in=model.054 -param model_out=model.055 -param next_chunk=chunks/054 trending.pig
wc -l trending.model.054
touch model.055
time pig -x local -param model_in=model.055 -param model_out=model.056 -param next_chunk=chunks/055 trending.pig
wc -l trending.model.055
touch model.056
time pig -x local -param model_in=model.056 -param model_out=model.057 -param next_chunk=chunks/056 trending.pig
wc -l trending.model.056
touch model.057
time pig -x local -param model_in=model.057 -param model_out=model.058 -param next_chunk=chunks/057 trending.pig
wc -l trending.model.057
touch model.058
time pig -x local -param model_in=model.058 -param model_out=model.059 -param next_chunk=chunks/058 trending.pig
wc -l trending.model.058
touch model.059
time pig -x local -param model_in=model.059 -param model_out=model.060 -param next_chunk=chunks/059 trending.pig
wc -l trending.model.059
touch model.060
time pig -x local -param model_in=model.060 -param model_out=model.061 -param next_chunk=chunks/060 trending.pig
wc -l trending.model.060
touch model.061
time pig -x local -param model_in=model.061 -param model_out=model.062 -param next_chunk=chunks/061 trending.pig
wc -l trending.model.061
touch model.062
time pig -x local -param model_in=model.062 -param model_out=model.063 -param next_chunk=chunks/062 trending.pig
wc -l trending.model.062
touch model.063
time pig -x local -param model_in=model.063 -param model_out=model.064 -param next_chunk=chunks/063 trending.pig
wc -l trending.model.063
touch model.064
time pig -x local -param model_in=model.064 -param model_out=model.065 -param next_chunk=chunks/064 trending.pig
wc -l trending.model.064
touch model.065
time pig -x local -param model_in=model.065 -param model_out=model.066 -param next_chunk=chunks/065 trending.pig
wc -l trending.model.065
touch model.066
time pig -x local -param model_in=model.066 -param model_out=model.067 -param next_chunk=chunks/066 trending.pig
wc -l trending.model.066
touch model.067
time pig -x local -param model_in=model.067 -param model_out=model.068 -param next_chunk=chunks/067 trending.pig
wc -l trending.model.067
touch model.068
time pig -x local -param model_in=model.068 -param model_out=model.069 -param next_chunk=chunks/068 trending.pig
wc -l trending.model.068
touch model.069
time pig -x local -param model_in=model.069 -param model_out=model.070 -param next_chunk=chunks/069 trending.pig
wc -l trending.model.069
touch model.070
time pig -x local -param model_in=model.070 -param model_out=model.071 -param next_chunk=chunks/070 trending.pig
wc -l trending.model.070
touch model.071
time pig -x local -param model_in=model.071 -param model_out=model.072 -param next_chunk=chunks/071 trending.pig
wc -l trending.model.071
touch model.072
time pig -x local -param model_in=model.072 -param model_out=model.073 -param next_chunk=chunks/072 trending.pig
wc -l trending.model.072
touch model.073
time pig -x local -param model_in=model.073 -param model_out=model.074 -param next_chunk=chunks/073 trending.pig
wc -l trending.model.073
touch model.074
time pig -x local -param model_in=model.074 -param model_out=model.075 -param next_chunk=chunks/074 trending.pig
wc -l trending.model.074
touch model.075
time pig -x local -param model_in=model.075 -param model_out=model.076 -param next_chunk=chunks/075 trending.pig
wc -l trending.model.075
touch model.076
time pig -x local -param model_in=model.076 -param model_out=model.077 -param next_chunk=chunks/076 trending.pig
wc -l trending.model.076
touch model.077
time pig -x local -param model_in=model.077 -param model_out=model.078 -param next_chunk=chunks/077 trending.pig
wc -l trending.model.077
touch model.078
time pig -x local -param model_in=model.078 -param model_out=model.079 -param next_chunk=chunks/078 trending.pig
wc -l trending.model.078
touch model.079
time pig -x local -param model_in=model.079 -param model_out=model.080 -param next_chunk=chunks/079 trending.pig
wc -l trending.model.079
touch model.080
time pig -x local -param model_in=model.080 -param model_out=model.081 -param next_chunk=chunks/080 trending.pig
wc -l trending.model.080
touch model.081
time pig -x local -param model_in=model.081 -param model_out=model.082 -param next_chunk=chunks/081 trending.pig
wc -l trending.model.081
touch model.082
time pig -x local -param model_in=model.082 -param model_out=model.083 -param next_chunk=chunks/082 trending.pig
wc -l trending.model.082
touch model.083
time pig -x local -param model_in=model.083 -param model_out=model.084 -param next_chunk=chunks/083 trending.pig
wc -l trending.model.083
touch model.084
time pig -x local -param model_in=model.084 -param model_out=model.085 -param next_chunk=chunks/084 trending.pig
wc -l trending.model.084
touch model.085
time pig -x local -param model_in=model.085 -param model_out=model.086 -param next_chunk=chunks/085 trending.pig
wc -l trending.model.085
touch model.086
time pig -x local -param model_in=model.086 -param model_out=model.087 -param next_chunk=chunks/086 trending.pig
wc -l trending.model.086
touch model.087
time pig -x local -param model_in=model.087 -param model_out=model.088 -param next_chunk=chunks/087 trending.pig
wc -l trending.model.087
touch model.088
time pig -x local -param model_in=model.088 -param model_out=model.089 -param next_chunk=chunks/088 trending.pig
wc -l trending.model.088
touch model.089
time pig -x local -param model_in=model.089 -param model_out=model.090 -param next_chunk=chunks/089 trending.pig
wc -l trending.model.089
touch model.090
time pig -x local -param model_in=model.090 -param model_out=model.091 -param next_chunk=chunks/090 trending.pig
wc -l trending.model.090
touch model.091
time pig -x local -param model_in=model.091 -param model_out=model.092 -param next_chunk=chunks/091 trending.pig
wc -l trending.model.091
touch model.092
time pig -x local -param model_in=model.092 -param model_out=model.093 -param next_chunk=chunks/092 trending.pig
wc -l trending.model.092
touch model.093
time pig -x local -param model_in=model.093 -param model_out=model.094 -param next_chunk=chunks/093 trending.pig
wc -l trending.model.093
touch model.094
time pig -x local -param model_in=model.094 -param model_out=model.095 -param next_chunk=chunks/094 trending.pig
wc -l trending.model.094
touch model.095
time pig -x local -param model_in=model.095 -param model_out=model.096 -param next_chunk=chunks/095 trending.pig
wc -l trending.model.095
touch model.096
time pig -x local -param model_in=model.096 -param model_out=model.097 -param next_chunk=chunks/096 trending.pig
wc -l trending.model.096
touch model.097
time pig -x local -param model_in=model.097 -param model_out=model.098 -param next_chunk=chunks/097 trending.pig
wc -l trending.model.097
touch model.098
time pig -x local -param model_in=model.098 -param model_out=model.099 -param next_chunk=chunks/098 trending.pig
wc -l trending.model.098
touch model.099
time pig -x local -param model_in=model.099 -param model_out=model.100 -param next_chunk=chunks/099 trending.pig
wc -l trending.model.099
touch model.100
time pig -x local -param model_in=model.100 -param model_out=model.101 -param next_chunk=chunks/100 trending.pig
wc -l trending.model.100
touch model.101
time pig -x local -param model_in=model.101 -param model_out=model.102 -param next_chunk=chunks/101 trending.pig
wc -l trending.model.101
touch model.102
time pig -x local -param model_in=model.102 -param model_out=model.103 -param next_chunk=chunks/102 trending.pig
wc -l trending.model.102
touch model.103
time pig -x local -param model_in=model.103 -param model_out=model.104 -param next_chunk=chunks/103 trending.pig
wc -l trending.model.103
touch model.104
time pig -x local -param model_in=model.104 -param model_out=model.105 -param next_chunk=chunks/104 trending.pig
wc -l trending.model.104
touch model.105
time pig -x local -param model_in=model.105 -param model_out=model.106 -param next_chunk=chunks/105 trending.pig
wc -l trending.model.105
touch model.106
time pig -x local -param model_in=model.106 -param model_out=model.107 -param next_chunk=chunks/106 trending.pig
wc -l trending.model.106
touch model.107
time pig -x local -param model_in=model.107 -param model_out=model.108 -param next_chunk=chunks/107 trending.pig
wc -l trending.model.107
touch model.108
time pig -x local -param model_in=model.108 -param model_out=model.109 -param next_chunk=chunks/108 trending.pig
wc -l trending.model.108
touch model.109
time pig -x local -param model_in=model.109 -param model_out=model.110 -param next_chunk=chunks/109 trending.pig
wc -l trending.model.109
touch model.110
time pig -x local -param model_in=model.110 -param model_out=model.111 -param next_chunk=chunks/110 trending.pig
wc -l trending.model.110
touch model.111
time pig -x local -param model_in=model.111 -param model_out=model.112 -param next_chunk=chunks/111 trending.pig
wc -l trending.model.111
touch model.112
time pig -x local -param model_in=model.112 -param model_out=model.113 -param next_chunk=chunks/112 trending.pig
wc -l trending.model.112
touch model.113
time pig -x local -param model_in=model.113 -param model_out=model.114 -param next_chunk=chunks/113 trending.pig
wc -l trending.model.113
touch model.114
time pig -x local -param model_in=model.114 -param model_out=model.115 -param next_chunk=chunks/114 trending.pig
wc -l trending.model.114
touch model.115
time pig -x local -param model_in=model.115 -param model_out=model.116 -param next_chunk=chunks/115 trending.pig
wc -l trending.model.115
touch model.116
time pig -x local -param model_in=model.116 -param model_out=model.117 -param next_chunk=chunks/116 trending.pig
wc -l trending.model.116
touch model.117
time pig -x local -param model_in=model.117 -param model_out=model.118 -param next_chunk=chunks/117 trending.pig
wc -l trending.model.117
touch model.118
time pig -x local -param model_in=model.118 -param model_out=model.119 -param next_chunk=chunks/118 trending.pig
wc -l trending.model.118
touch model.119
time pig -x local -param model_in=model.119 -param model_out=model.120 -param next_chunk=chunks/119 trending.pig
wc -l trending.model.119
touch model.120
time pig -x local -param model_in=model.120 -param model_out=model.121 -param next_chunk=chunks/120 trending.pig
wc -l trending.model.120
touch model.121
time pig -x local -param model_in=model.121 -param model_out=model.122 -param next_chunk=chunks/121 trending.pig
wc -l trending.model.121
touch model.122
time pig -x local -param model_in=model.122 -param model_out=model.123 -param next_chunk=chunks/122 trending.pig
wc -l trending.model.122
touch model.123
time pig -x local -param model_in=model.123 -param model_out=model.124 -param next_chunk=chunks/123 trending.pig
wc -l trending.model.123
touch model.124
time pig -x local -param model_in=model.124 -param model_out=model.125 -param next_chunk=chunks/124 trending.pig
wc -l trending.model.124
touch model.125
time pig -x local -param model_in=model.125 -param model_out=model.126 -param next_chunk=chunks/125 trending.pig
wc -l trending.model.125
touch model.126
time pig -x local -param model_in=model.126 -param model_out=model.127 -param next_chunk=chunks/126 trending.pig
wc -l trending.model.126
touch model.127
time pig -x local -param model_in=model.127 -param model_out=model.128 -param next_chunk=chunks/127 trending.pig
wc -l trending.model.127
touch model.128
time pig -x local -param model_in=model.128 -param model_out=model.129 -param next_chunk=chunks/128 trending.pig
wc -l trending.model.128
touch model.129
time pig -x local -param model_in=model.129 -param model_out=model.130 -param next_chunk=chunks/129 trending.pig
wc -l trending.model.129
touch model.130
time pig -x local -param model_in=model.130 -param model_out=model.131 -param next_chunk=chunks/130 trending.pig
wc -l trending.model.130
touch model.131
time pig -x local -param model_in=model.131 -param model_out=model.132 -param next_chunk=chunks/131 trending.pig
wc -l trending.model.131
touch model.132
time pig -x local -param model_in=model.132 -param model_out=model.133 -param next_chunk=chunks/132 trending.pig
wc -l trending.model.132
touch model.133
time pig -x local -param model_in=model.133 -param model_out=model.134 -param next_chunk=chunks/133 trending.pig
wc -l trending.model.133
touch model.134
time pig -x local -param model_in=model.134 -param model_out=model.135 -param next_chunk=chunks/134 trending.pig
wc -l trending.model.134
touch model.135
time pig -x local -param model_in=model.135 -param model_out=model.136 -param next_chunk=chunks/135 trending.pig
wc -l trending.model.135
touch model.136
time pig -x local -param model_in=model.136 -param model_out=model.137 -param next_chunk=chunks/136 trending.pig
wc -l trending.model.136
touch model.137
time pig -x local -param model_in=model.137 -param model_out=model.138 -param next_chunk=chunks/137 trending.pig
wc -l trending.model.137
touch model.138
time pig -x local -param model_in=model.138 -param model_out=model.139 -param next_chunk=chunks/138 trending.pig
wc -l trending.model.138
touch model.139
time pig -x local -param model_in=model.139 -param model_out=model.140 -param next_chunk=chunks/139 trending.pig
wc -l trending.model.139
touch model.140
time pig -x local -param model_in=model.140 -param model_out=model.141 -param next_chunk=chunks/140 trending.pig
wc -l trending.model.140
touch model.141
time pig -x local -param model_in=model.141 -param model_out=model.142 -param next_chunk=chunks/141 trending.pig
wc -l trending.model.141
touch model.142
time pig -x local -param model_in=model.142 -param model_out=model.143 -param next_chunk=chunks/142 trending.pig
wc -l trending.model.142
touch model.143
time pig -x local -param model_in=model.143 -param model_out=model.144 -param next_chunk=chunks/143 trending.pig
wc -l trending.model.143
touch model.144
time pig -x local -param model_in=model.144 -param model_out=model.145 -param next_chunk=chunks/144 trending.pig
wc -l trending.model.144
touch model.145
time pig -x local -param model_in=model.145 -param model_out=model.146 -param next_chunk=chunks/145 trending.pig
wc -l trending.model.145
touch model.146
time pig -x local -param model_in=model.146 -param model_out=model.147 -param next_chunk=chunks/146 trending.pig
wc -l trending.model.146
touch model.147
time pig -x local -param model_in=model.147 -param model_out=model.148 -param next_chunk=chunks/147 trending.pig
wc -l trending.model.147
touch model.148
time pig -x local -param model_in=model.148 -param model_out=model.149 -param next_chunk=chunks/148 trending.pig
wc -l trending.model.148
touch model.149
time pig -x local -param model_in=model.149 -param model_out=model.150 -param next_chunk=chunks/149 trending.pig
wc -l trending.model.149
touch model.150
time pig -x local -param model_in=model.150 -param model_out=model.151 -param next_chunk=chunks/150 trending.pig
wc -l trending.model.150
touch model.151
time pig -x local -param model_in=model.151 -param model_out=model.152 -param next_chunk=chunks/151 trending.pig
wc -l trending.model.151
touch model.152
time pig -x local -param model_in=model.152 -param model_out=model.153 -param next_chunk=chunks/152 trending.pig
wc -l trending.model.152
touch model.153
time pig -x local -param model_in=model.153 -param model_out=model.154 -param next_chunk=chunks/153 trending.pig
wc -l trending.model.153
touch model.154
time pig -x local -param model_in=model.154 -param model_out=model.155 -param next_chunk=chunks/154 trending.pig
wc -l trending.model.154
touch model.155
time pig -x local -param model_in=model.155 -param model_out=model.156 -param next_chunk=chunks/155 trending.pig
wc -l trending.model.155
touch model.156
time pig -x local -param model_in=model.156 -param model_out=model.157 -param next_chunk=chunks/156 trending.pig
wc -l trending.model.156
touch model.157
time pig -x local -param model_in=model.157 -param model_out=model.158 -param next_chunk=chunks/157 trending.pig
wc -l trending.model.157
touch model.158
time pig -x local -param model_in=model.158 -param model_out=model.159 -param next_chunk=chunks/158 trending.pig
wc -l trending.model.158
touch model.159
time pig -x local -param model_in=model.159 -param model_out=model.160 -param next_chunk=chunks/159 trending.pig
wc -l trending.model.159
touch model.160
time pig -x local -param model_in=model.160 -param model_out=model.161 -param next_chunk=chunks/160 trending.pig
wc -l trending.model.160
touch model.161
time pig -x local -param model_in=model.161 -param model_out=model.162 -param next_chunk=chunks/161 trending.pig
wc -l trending.model.161
touch model.162
time pig -x local -param model_in=model.162 -param model_out=model.163 -param next_chunk=chunks/162 trending.pig
wc -l trending.model.162
touch model.163
time pig -x local -param model_in=model.163 -param model_out=model.164 -param next_chunk=chunks/163 trending.pig
wc -l trending.model.163
touch model.164
time pig -x local -param model_in=model.164 -param model_out=model.165 -param next_chunk=chunks/164 trending.pig
wc -l trending.model.164
touch model.165
time pig -x local -param model_in=model.165 -param model_out=model.166 -param next_chunk=chunks/165 trending.pig
wc -l trending.model.165
touch model.166
time pig -x local -param model_in=model.166 -param model_out=model.167 -param next_chunk=chunks/166 trending.pig
wc -l trending.model.166
touch model.167
time pig -x local -param model_in=model.167 -param model_out=model.168 -param next_chunk=chunks/167 trending.pig
wc -l trending.model.167
touch model.168
time pig -x local -param model_in=model.168 -param model_out=model.169 -param next_chunk=chunks/168 trending.pig
wc -l trending.model.168
touch model.169
time pig -x local -param model_in=model.169 -param model_out=model.170 -param next_chunk=chunks/169 trending.pig
wc -l trending.model.169
touch model.170
time pig -x local -param model_in=model.170 -param model_out=model.171 -param next_chunk=chunks/170 trending.pig
wc -l trending.model.170
touch model.171
time pig -x local -param model_in=model.171 -param model_out=model.172 -param next_chunk=chunks/171 trending.pig
wc -l trending.model.171
touch model.172
time pig -x local -param model_in=model.172 -param model_out=model.173 -param next_chunk=chunks/172 trending.pig
wc -l trending.model.172
touch model.173
time pig -x local -param model_in=model.173 -param model_out=model.174 -param next_chunk=chunks/173 trending.pig
wc -l trending.model.173
touch model.174
time pig -x local -param model_in=model.174 -param model_out=model.175 -param next_chunk=chunks/174 trending.pig
wc -l trending.model.174
touch model.175
time pig -x local -param model_in=model.175 -param model_out=model.176 -param next_chunk=chunks/175 trending.pig
wc -l trending.model.175
touch model.176
time pig -x local -param model_in=model.176 -param model_out=model.177 -param next_chunk=chunks/176 trending.pig
wc -l trending.model.176
touch model.177
time pig -x local -param model_in=model.177 -param model_out=model.178 -param next_chunk=chunks/177 trending.pig
wc -l trending.model.177
touch model.178
time pig -x local -param model_in=model.178 -param model_out=model.179 -param next_chunk=chunks/178 trending.pig
wc -l trending.model.178
touch model.179
time pig -x local -param model_in=model.179 -param model_out=model.180 -param next_chunk=chunks/179 trending.pig
wc -l trending.model.179
touch model.180
time pig -x local -param model_in=model.180 -param model_out=model.181 -param next_chunk=chunks/180 trending.pig
wc -l trending.model.180
touch model.181
time pig -x local -param model_in=model.181 -param model_out=model.182 -param next_chunk=chunks/181 trending.pig
wc -l trending.model.181
touch model.182
time pig -x local -param model_in=model.182 -param model_out=model.183 -param next_chunk=chunks/182 trending.pig
wc -l trending.model.182
touch model.183
time pig -x local -param model_in=model.183 -param model_out=model.184 -param next_chunk=chunks/183 trending.pig
wc -l trending.model.183
touch model.184
time pig -x local -param model_in=model.184 -param model_out=model.185 -param next_chunk=chunks/184 trending.pig
wc -l trending.model.184
touch model.185
time pig -x local -param model_in=model.185 -param model_out=model.186 -param next_chunk=chunks/185 trending.pig
wc -l trending.model.185
touch model.186
time pig -x local -param model_in=model.186 -param model_out=model.187 -param next_chunk=chunks/186 trending.pig
wc -l trending.model.186
touch model.187
time pig -x local -param model_in=model.187 -param model_out=model.188 -param next_chunk=chunks/187 trending.pig
wc -l trending.model.187
touch model.188
time pig -x local -param model_in=model.188 -param model_out=model.189 -param next_chunk=chunks/188 trending.pig
wc -l trending.model.188
touch model.189
time pig -x local -param model_in=model.189 -param model_out=model.190 -param next_chunk=chunks/189 trending.pig
wc -l trending.model.189
touch model.190
time pig -x local -param model_in=model.190 -param model_out=model.191 -param next_chunk=chunks/190 trending.pig
wc -l trending.model.190
touch model.191
time pig -x local -param model_in=model.191 -param model_out=model.192 -param next_chunk=chunks/191 trending.pig
wc -l trending.model.191
touch model.192
time pig -x local -param model_in=model.192 -param model_out=model.193 -param next_chunk=chunks/192 trending.pig
wc -l trending.model.192
touch model.193
time pig -x local -param model_in=model.193 -param model_out=model.194 -param next_chunk=chunks/193 trending.pig
wc -l trending.model.193
touch model.194
time pig -x local -param model_in=model.194 -param model_out=model.195 -param next_chunk=chunks/194 trending.pig
wc -l trending.model.194
touch model.195
time pig -x local -param model_in=model.195 -param model_out=model.196 -param next_chunk=chunks/195 trending.pig
wc -l trending.model.195
touch model.196
time pig -x local -param model_in=model.196 -param model_out=model.197 -param next_chunk=chunks/196 trending.pig
wc -l trending.model.196
touch model.197
time pig -x local -param model_in=model.197 -param model_out=model.198 -param next_chunk=chunks/197 trending.pig
wc -l trending.model.197
touch model.198
time pig -x local -param model_in=model.198 -param model_out=model.199 -param next_chunk=chunks/198 trending.pig
wc -l trending.model.198
touch model.199
time pig -x local -param model_in=model.199 -param model_out=model.200 -param next_chunk=chunks/199 trending.pig
wc -l trending.model.199
touch model.200
time pig -x local -param model_in=model.200 -param model_out=model.201 -param next_chunk=chunks/200 trending.pig
wc -l trending.model.200
