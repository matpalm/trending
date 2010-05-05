#!/usr/bin/env bash
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
touch model.201
time pig -x local -param model_in=model.201 -param model_out=model.202 -param next_chunk=chunks/201 trending.pig
wc -l trending.model.201
touch model.202
time pig -x local -param model_in=model.202 -param model_out=model.203 -param next_chunk=chunks/202 trending.pig
wc -l trending.model.202
touch model.203
time pig -x local -param model_in=model.203 -param model_out=model.204 -param next_chunk=chunks/203 trending.pig
wc -l trending.model.203
touch model.204
time pig -x local -param model_in=model.204 -param model_out=model.205 -param next_chunk=chunks/204 trending.pig
wc -l trending.model.204
touch model.205
time pig -x local -param model_in=model.205 -param model_out=model.206 -param next_chunk=chunks/205 trending.pig
wc -l trending.model.205
touch model.206
time pig -x local -param model_in=model.206 -param model_out=model.207 -param next_chunk=chunks/206 trending.pig
wc -l trending.model.206
touch model.207
time pig -x local -param model_in=model.207 -param model_out=model.208 -param next_chunk=chunks/207 trending.pig
wc -l trending.model.207
touch model.208
time pig -x local -param model_in=model.208 -param model_out=model.209 -param next_chunk=chunks/208 trending.pig
wc -l trending.model.208
touch model.209
time pig -x local -param model_in=model.209 -param model_out=model.210 -param next_chunk=chunks/209 trending.pig
wc -l trending.model.209
touch model.210
time pig -x local -param model_in=model.210 -param model_out=model.211 -param next_chunk=chunks/210 trending.pig
wc -l trending.model.210
touch model.211
time pig -x local -param model_in=model.211 -param model_out=model.212 -param next_chunk=chunks/211 trending.pig
wc -l trending.model.211
touch model.212
time pig -x local -param model_in=model.212 -param model_out=model.213 -param next_chunk=chunks/212 trending.pig
wc -l trending.model.212
touch model.213
time pig -x local -param model_in=model.213 -param model_out=model.214 -param next_chunk=chunks/213 trending.pig
wc -l trending.model.213
touch model.214
time pig -x local -param model_in=model.214 -param model_out=model.215 -param next_chunk=chunks/214 trending.pig
wc -l trending.model.214
touch model.215
time pig -x local -param model_in=model.215 -param model_out=model.216 -param next_chunk=chunks/215 trending.pig
wc -l trending.model.215
touch model.216
time pig -x local -param model_in=model.216 -param model_out=model.217 -param next_chunk=chunks/216 trending.pig
wc -l trending.model.216
touch model.217
time pig -x local -param model_in=model.217 -param model_out=model.218 -param next_chunk=chunks/217 trending.pig
wc -l trending.model.217
touch model.218
time pig -x local -param model_in=model.218 -param model_out=model.219 -param next_chunk=chunks/218 trending.pig
wc -l trending.model.218
touch model.219
time pig -x local -param model_in=model.219 -param model_out=model.220 -param next_chunk=chunks/219 trending.pig
wc -l trending.model.219
touch model.220
time pig -x local -param model_in=model.220 -param model_out=model.221 -param next_chunk=chunks/220 trending.pig
wc -l trending.model.220
touch model.221
time pig -x local -param model_in=model.221 -param model_out=model.222 -param next_chunk=chunks/221 trending.pig
wc -l trending.model.221
touch model.222
time pig -x local -param model_in=model.222 -param model_out=model.223 -param next_chunk=chunks/222 trending.pig
wc -l trending.model.222
touch model.223
time pig -x local -param model_in=model.223 -param model_out=model.224 -param next_chunk=chunks/223 trending.pig
wc -l trending.model.223
touch model.224
time pig -x local -param model_in=model.224 -param model_out=model.225 -param next_chunk=chunks/224 trending.pig
wc -l trending.model.224
touch model.225
time pig -x local -param model_in=model.225 -param model_out=model.226 -param next_chunk=chunks/225 trending.pig
wc -l trending.model.225
touch model.226
time pig -x local -param model_in=model.226 -param model_out=model.227 -param next_chunk=chunks/226 trending.pig
wc -l trending.model.226
touch model.227
time pig -x local -param model_in=model.227 -param model_out=model.228 -param next_chunk=chunks/227 trending.pig
wc -l trending.model.227
touch model.228
time pig -x local -param model_in=model.228 -param model_out=model.229 -param next_chunk=chunks/228 trending.pig
wc -l trending.model.228
touch model.229
time pig -x local -param model_in=model.229 -param model_out=model.230 -param next_chunk=chunks/229 trending.pig
wc -l trending.model.229
touch model.230
time pig -x local -param model_in=model.230 -param model_out=model.231 -param next_chunk=chunks/230 trending.pig
wc -l trending.model.230
touch model.231
time pig -x local -param model_in=model.231 -param model_out=model.232 -param next_chunk=chunks/231 trending.pig
wc -l trending.model.231
touch model.232
time pig -x local -param model_in=model.232 -param model_out=model.233 -param next_chunk=chunks/232 trending.pig
wc -l trending.model.232
touch model.233
time pig -x local -param model_in=model.233 -param model_out=model.234 -param next_chunk=chunks/233 trending.pig
wc -l trending.model.233
touch model.234
time pig -x local -param model_in=model.234 -param model_out=model.235 -param next_chunk=chunks/234 trending.pig
wc -l trending.model.234
touch model.235
time pig -x local -param model_in=model.235 -param model_out=model.236 -param next_chunk=chunks/235 trending.pig
wc -l trending.model.235
touch model.236
time pig -x local -param model_in=model.236 -param model_out=model.237 -param next_chunk=chunks/236 trending.pig
wc -l trending.model.236
touch model.237
time pig -x local -param model_in=model.237 -param model_out=model.238 -param next_chunk=chunks/237 trending.pig
wc -l trending.model.237
touch model.238
time pig -x local -param model_in=model.238 -param model_out=model.239 -param next_chunk=chunks/238 trending.pig
wc -l trending.model.238
touch model.239
time pig -x local -param model_in=model.239 -param model_out=model.240 -param next_chunk=chunks/239 trending.pig
wc -l trending.model.239
touch model.240
time pig -x local -param model_in=model.240 -param model_out=model.241 -param next_chunk=chunks/240 trending.pig
wc -l trending.model.240
touch model.241
time pig -x local -param model_in=model.241 -param model_out=model.242 -param next_chunk=chunks/241 trending.pig
wc -l trending.model.241
touch model.242
time pig -x local -param model_in=model.242 -param model_out=model.243 -param next_chunk=chunks/242 trending.pig
wc -l trending.model.242
touch model.243
time pig -x local -param model_in=model.243 -param model_out=model.244 -param next_chunk=chunks/243 trending.pig
wc -l trending.model.243
touch model.244
time pig -x local -param model_in=model.244 -param model_out=model.245 -param next_chunk=chunks/244 trending.pig
wc -l trending.model.244
touch model.245
time pig -x local -param model_in=model.245 -param model_out=model.246 -param next_chunk=chunks/245 trending.pig
wc -l trending.model.245
touch model.246
time pig -x local -param model_in=model.246 -param model_out=model.247 -param next_chunk=chunks/246 trending.pig
wc -l trending.model.246
touch model.247
time pig -x local -param model_in=model.247 -param model_out=model.248 -param next_chunk=chunks/247 trending.pig
wc -l trending.model.247
touch model.248
time pig -x local -param model_in=model.248 -param model_out=model.249 -param next_chunk=chunks/248 trending.pig
wc -l trending.model.248
touch model.249
time pig -x local -param model_in=model.249 -param model_out=model.250 -param next_chunk=chunks/249 trending.pig
wc -l trending.model.249
touch model.250
time pig -x local -param model_in=model.250 -param model_out=model.251 -param next_chunk=chunks/250 trending.pig
wc -l trending.model.250
touch model.251
time pig -x local -param model_in=model.251 -param model_out=model.252 -param next_chunk=chunks/251 trending.pig
wc -l trending.model.251
touch model.252
time pig -x local -param model_in=model.252 -param model_out=model.253 -param next_chunk=chunks/252 trending.pig
wc -l trending.model.252
touch model.253
time pig -x local -param model_in=model.253 -param model_out=model.254 -param next_chunk=chunks/253 trending.pig
wc -l trending.model.253
touch model.254
time pig -x local -param model_in=model.254 -param model_out=model.255 -param next_chunk=chunks/254 trending.pig
wc -l trending.model.254
touch model.255
time pig -x local -param model_in=model.255 -param model_out=model.256 -param next_chunk=chunks/255 trending.pig
wc -l trending.model.255
touch model.256
time pig -x local -param model_in=model.256 -param model_out=model.257 -param next_chunk=chunks/256 trending.pig
wc -l trending.model.256
touch model.257
time pig -x local -param model_in=model.257 -param model_out=model.258 -param next_chunk=chunks/257 trending.pig
wc -l trending.model.257
touch model.258
time pig -x local -param model_in=model.258 -param model_out=model.259 -param next_chunk=chunks/258 trending.pig
wc -l trending.model.258
touch model.259
time pig -x local -param model_in=model.259 -param model_out=model.260 -param next_chunk=chunks/259 trending.pig
wc -l trending.model.259
touch model.260
time pig -x local -param model_in=model.260 -param model_out=model.261 -param next_chunk=chunks/260 trending.pig
wc -l trending.model.260
touch model.261
time pig -x local -param model_in=model.261 -param model_out=model.262 -param next_chunk=chunks/261 trending.pig
wc -l trending.model.261
touch model.262
time pig -x local -param model_in=model.262 -param model_out=model.263 -param next_chunk=chunks/262 trending.pig
wc -l trending.model.262
touch model.263
time pig -x local -param model_in=model.263 -param model_out=model.264 -param next_chunk=chunks/263 trending.pig
wc -l trending.model.263
touch model.264
time pig -x local -param model_in=model.264 -param model_out=model.265 -param next_chunk=chunks/264 trending.pig
wc -l trending.model.264
touch model.265
time pig -x local -param model_in=model.265 -param model_out=model.266 -param next_chunk=chunks/265 trending.pig
wc -l trending.model.265
touch model.266
time pig -x local -param model_in=model.266 -param model_out=model.267 -param next_chunk=chunks/266 trending.pig
wc -l trending.model.266
touch model.267
time pig -x local -param model_in=model.267 -param model_out=model.268 -param next_chunk=chunks/267 trending.pig
wc -l trending.model.267
touch model.268
time pig -x local -param model_in=model.268 -param model_out=model.269 -param next_chunk=chunks/268 trending.pig
wc -l trending.model.268
touch model.269
time pig -x local -param model_in=model.269 -param model_out=model.270 -param next_chunk=chunks/269 trending.pig
wc -l trending.model.269
touch model.270
time pig -x local -param model_in=model.270 -param model_out=model.271 -param next_chunk=chunks/270 trending.pig
wc -l trending.model.270
touch model.271
time pig -x local -param model_in=model.271 -param model_out=model.272 -param next_chunk=chunks/271 trending.pig
wc -l trending.model.271
touch model.272
time pig -x local -param model_in=model.272 -param model_out=model.273 -param next_chunk=chunks/272 trending.pig
wc -l trending.model.272
touch model.273
time pig -x local -param model_in=model.273 -param model_out=model.274 -param next_chunk=chunks/273 trending.pig
wc -l trending.model.273
touch model.274
time pig -x local -param model_in=model.274 -param model_out=model.275 -param next_chunk=chunks/274 trending.pig
wc -l trending.model.274
touch model.275
time pig -x local -param model_in=model.275 -param model_out=model.276 -param next_chunk=chunks/275 trending.pig
wc -l trending.model.275
touch model.276
time pig -x local -param model_in=model.276 -param model_out=model.277 -param next_chunk=chunks/276 trending.pig
wc -l trending.model.276
touch model.277
time pig -x local -param model_in=model.277 -param model_out=model.278 -param next_chunk=chunks/277 trending.pig
wc -l trending.model.277
touch model.278
time pig -x local -param model_in=model.278 -param model_out=model.279 -param next_chunk=chunks/278 trending.pig
wc -l trending.model.278
touch model.279
time pig -x local -param model_in=model.279 -param model_out=model.280 -param next_chunk=chunks/279 trending.pig
wc -l trending.model.279
touch model.280
time pig -x local -param model_in=model.280 -param model_out=model.281 -param next_chunk=chunks/280 trending.pig
wc -l trending.model.280
touch model.281
time pig -x local -param model_in=model.281 -param model_out=model.282 -param next_chunk=chunks/281 trending.pig
wc -l trending.model.281
touch model.282
time pig -x local -param model_in=model.282 -param model_out=model.283 -param next_chunk=chunks/282 trending.pig
wc -l trending.model.282
touch model.283
time pig -x local -param model_in=model.283 -param model_out=model.284 -param next_chunk=chunks/283 trending.pig
wc -l trending.model.283
touch model.284
time pig -x local -param model_in=model.284 -param model_out=model.285 -param next_chunk=chunks/284 trending.pig
wc -l trending.model.284
touch model.285
time pig -x local -param model_in=model.285 -param model_out=model.286 -param next_chunk=chunks/285 trending.pig
wc -l trending.model.285
touch model.286
time pig -x local -param model_in=model.286 -param model_out=model.287 -param next_chunk=chunks/286 trending.pig
wc -l trending.model.286
touch model.287
time pig -x local -param model_in=model.287 -param model_out=model.288 -param next_chunk=chunks/287 trending.pig
wc -l trending.model.287
touch model.288
time pig -x local -param model_in=model.288 -param model_out=model.289 -param next_chunk=chunks/288 trending.pig
wc -l trending.model.288
touch model.289
time pig -x local -param model_in=model.289 -param model_out=model.290 -param next_chunk=chunks/289 trending.pig
wc -l trending.model.289
touch model.290
time pig -x local -param model_in=model.290 -param model_out=model.291 -param next_chunk=chunks/290 trending.pig
wc -l trending.model.290
touch model.291
time pig -x local -param model_in=model.291 -param model_out=model.292 -param next_chunk=chunks/291 trending.pig
wc -l trending.model.291
touch model.292
time pig -x local -param model_in=model.292 -param model_out=model.293 -param next_chunk=chunks/292 trending.pig
wc -l trending.model.292
touch model.293
time pig -x local -param model_in=model.293 -param model_out=model.294 -param next_chunk=chunks/293 trending.pig
wc -l trending.model.293
touch model.294
time pig -x local -param model_in=model.294 -param model_out=model.295 -param next_chunk=chunks/294 trending.pig
wc -l trending.model.294
touch model.295
time pig -x local -param model_in=model.295 -param model_out=model.296 -param next_chunk=chunks/295 trending.pig
wc -l trending.model.295
touch model.296
time pig -x local -param model_in=model.296 -param model_out=model.297 -param next_chunk=chunks/296 trending.pig
wc -l trending.model.296
touch model.297
time pig -x local -param model_in=model.297 -param model_out=model.298 -param next_chunk=chunks/297 trending.pig
wc -l trending.model.297
touch model.298
time pig -x local -param model_in=model.298 -param model_out=model.299 -param next_chunk=chunks/298 trending.pig
wc -l trending.model.298
touch model.299
time pig -x local -param model_in=model.299 -param model_out=model.300 -param next_chunk=chunks/299 trending.pig
wc -l trending.model.299
touch model.300
time pig -x local -param model_in=model.300 -param model_out=model.301 -param next_chunk=chunks/300 trending.pig
wc -l trending.model.300
touch model.301
time pig -x local -param model_in=model.301 -param model_out=model.302 -param next_chunk=chunks/301 trending.pig
wc -l trending.model.301
touch model.302
time pig -x local -param model_in=model.302 -param model_out=model.303 -param next_chunk=chunks/302 trending.pig
wc -l trending.model.302
touch model.303
time pig -x local -param model_in=model.303 -param model_out=model.304 -param next_chunk=chunks/303 trending.pig
wc -l trending.model.303
touch model.304
time pig -x local -param model_in=model.304 -param model_out=model.305 -param next_chunk=chunks/304 trending.pig
wc -l trending.model.304
touch model.305
time pig -x local -param model_in=model.305 -param model_out=model.306 -param next_chunk=chunks/305 trending.pig
wc -l trending.model.305
touch model.306
time pig -x local -param model_in=model.306 -param model_out=model.307 -param next_chunk=chunks/306 trending.pig
wc -l trending.model.306
touch model.307
time pig -x local -param model_in=model.307 -param model_out=model.308 -param next_chunk=chunks/307 trending.pig
wc -l trending.model.307
touch model.308
time pig -x local -param model_in=model.308 -param model_out=model.309 -param next_chunk=chunks/308 trending.pig
wc -l trending.model.308
touch model.309
time pig -x local -param model_in=model.309 -param model_out=model.310 -param next_chunk=chunks/309 trending.pig
wc -l trending.model.309
touch model.310
time pig -x local -param model_in=model.310 -param model_out=model.311 -param next_chunk=chunks/310 trending.pig
wc -l trending.model.310
touch model.311
time pig -x local -param model_in=model.311 -param model_out=model.312 -param next_chunk=chunks/311 trending.pig
wc -l trending.model.311
touch model.312
time pig -x local -param model_in=model.312 -param model_out=model.313 -param next_chunk=chunks/312 trending.pig
wc -l trending.model.312
touch model.313
time pig -x local -param model_in=model.313 -param model_out=model.314 -param next_chunk=chunks/313 trending.pig
wc -l trending.model.313
touch model.314
time pig -x local -param model_in=model.314 -param model_out=model.315 -param next_chunk=chunks/314 trending.pig
wc -l trending.model.314
touch model.315
time pig -x local -param model_in=model.315 -param model_out=model.316 -param next_chunk=chunks/315 trending.pig
wc -l trending.model.315
touch model.316
time pig -x local -param model_in=model.316 -param model_out=model.317 -param next_chunk=chunks/316 trending.pig
wc -l trending.model.316
touch model.317
time pig -x local -param model_in=model.317 -param model_out=model.318 -param next_chunk=chunks/317 trending.pig
wc -l trending.model.317
touch model.318
time pig -x local -param model_in=model.318 -param model_out=model.319 -param next_chunk=chunks/318 trending.pig
wc -l trending.model.318
touch model.319
time pig -x local -param model_in=model.319 -param model_out=model.320 -param next_chunk=chunks/319 trending.pig
wc -l trending.model.319
touch model.320
time pig -x local -param model_in=model.320 -param model_out=model.321 -param next_chunk=chunks/320 trending.pig
wc -l trending.model.320
touch model.321
time pig -x local -param model_in=model.321 -param model_out=model.322 -param next_chunk=chunks/321 trending.pig
wc -l trending.model.321
touch model.322
time pig -x local -param model_in=model.322 -param model_out=model.323 -param next_chunk=chunks/322 trending.pig
wc -l trending.model.322
touch model.323
time pig -x local -param model_in=model.323 -param model_out=model.324 -param next_chunk=chunks/323 trending.pig
wc -l trending.model.323
touch model.324
time pig -x local -param model_in=model.324 -param model_out=model.325 -param next_chunk=chunks/324 trending.pig
wc -l trending.model.324
touch model.325
time pig -x local -param model_in=model.325 -param model_out=model.326 -param next_chunk=chunks/325 trending.pig
wc -l trending.model.325
touch model.326
time pig -x local -param model_in=model.326 -param model_out=model.327 -param next_chunk=chunks/326 trending.pig
wc -l trending.model.326
touch model.327
time pig -x local -param model_in=model.327 -param model_out=model.328 -param next_chunk=chunks/327 trending.pig
wc -l trending.model.327
touch model.328
time pig -x local -param model_in=model.328 -param model_out=model.329 -param next_chunk=chunks/328 trending.pig
wc -l trending.model.328
touch model.329
time pig -x local -param model_in=model.329 -param model_out=model.330 -param next_chunk=chunks/329 trending.pig
wc -l trending.model.329
touch model.330
time pig -x local -param model_in=model.330 -param model_out=model.331 -param next_chunk=chunks/330 trending.pig
wc -l trending.model.330
touch model.331
time pig -x local -param model_in=model.331 -param model_out=model.332 -param next_chunk=chunks/331 trending.pig
wc -l trending.model.331
touch model.332
time pig -x local -param model_in=model.332 -param model_out=model.333 -param next_chunk=chunks/332 trending.pig
wc -l trending.model.332
touch model.333
time pig -x local -param model_in=model.333 -param model_out=model.334 -param next_chunk=chunks/333 trending.pig
wc -l trending.model.333
touch model.334
time pig -x local -param model_in=model.334 -param model_out=model.335 -param next_chunk=chunks/334 trending.pig
wc -l trending.model.334
touch model.335
time pig -x local -param model_in=model.335 -param model_out=model.336 -param next_chunk=chunks/335 trending.pig
wc -l trending.model.335
touch model.336
time pig -x local -param model_in=model.336 -param model_out=model.337 -param next_chunk=chunks/336 trending.pig
wc -l trending.model.336
touch model.337
time pig -x local -param model_in=model.337 -param model_out=model.338 -param next_chunk=chunks/337 trending.pig
wc -l trending.model.337
touch model.338
time pig -x local -param model_in=model.338 -param model_out=model.339 -param next_chunk=chunks/338 trending.pig
wc -l trending.model.338
touch model.339
time pig -x local -param model_in=model.339 -param model_out=model.340 -param next_chunk=chunks/339 trending.pig
wc -l trending.model.339
touch model.340
time pig -x local -param model_in=model.340 -param model_out=model.341 -param next_chunk=chunks/340 trending.pig
wc -l trending.model.340
touch model.341
time pig -x local -param model_in=model.341 -param model_out=model.342 -param next_chunk=chunks/341 trending.pig
wc -l trending.model.341
touch model.342
time pig -x local -param model_in=model.342 -param model_out=model.343 -param next_chunk=chunks/342 trending.pig
wc -l trending.model.342
touch model.343
time pig -x local -param model_in=model.343 -param model_out=model.344 -param next_chunk=chunks/343 trending.pig
wc -l trending.model.343
touch model.344
time pig -x local -param model_in=model.344 -param model_out=model.345 -param next_chunk=chunks/344 trending.pig
wc -l trending.model.344
touch model.345
time pig -x local -param model_in=model.345 -param model_out=model.346 -param next_chunk=chunks/345 trending.pig
wc -l trending.model.345
touch model.346
time pig -x local -param model_in=model.346 -param model_out=model.347 -param next_chunk=chunks/346 trending.pig
wc -l trending.model.346
touch model.347
time pig -x local -param model_in=model.347 -param model_out=model.348 -param next_chunk=chunks/347 trending.pig
wc -l trending.model.347
touch model.348
time pig -x local -param model_in=model.348 -param model_out=model.349 -param next_chunk=chunks/348 trending.pig
wc -l trending.model.348
touch model.349
time pig -x local -param model_in=model.349 -param model_out=model.350 -param next_chunk=chunks/349 trending.pig
wc -l trending.model.349
touch model.350
time pig -x local -param model_in=model.350 -param model_out=model.351 -param next_chunk=chunks/350 trending.pig
wc -l trending.model.350
touch model.351
time pig -x local -param model_in=model.351 -param model_out=model.352 -param next_chunk=chunks/351 trending.pig
wc -l trending.model.351
touch model.352
time pig -x local -param model_in=model.352 -param model_out=model.353 -param next_chunk=chunks/352 trending.pig
wc -l trending.model.352
touch model.353
time pig -x local -param model_in=model.353 -param model_out=model.354 -param next_chunk=chunks/353 trending.pig
wc -l trending.model.353
touch model.354
time pig -x local -param model_in=model.354 -param model_out=model.355 -param next_chunk=chunks/354 trending.pig
wc -l trending.model.354
touch model.355
time pig -x local -param model_in=model.355 -param model_out=model.356 -param next_chunk=chunks/355 trending.pig
wc -l trending.model.355
touch model.356
time pig -x local -param model_in=model.356 -param model_out=model.357 -param next_chunk=chunks/356 trending.pig
wc -l trending.model.356
touch model.357
time pig -x local -param model_in=model.357 -param model_out=model.358 -param next_chunk=chunks/357 trending.pig
wc -l trending.model.357
touch model.358
time pig -x local -param model_in=model.358 -param model_out=model.359 -param next_chunk=chunks/358 trending.pig
wc -l trending.model.358
touch model.359
time pig -x local -param model_in=model.359 -param model_out=model.360 -param next_chunk=chunks/359 trending.pig
wc -l trending.model.359
touch model.360
time pig -x local -param model_in=model.360 -param model_out=model.361 -param next_chunk=chunks/360 trending.pig
wc -l trending.model.360
touch model.361
time pig -x local -param model_in=model.361 -param model_out=model.362 -param next_chunk=chunks/361 trending.pig
wc -l trending.model.361
touch model.362
time pig -x local -param model_in=model.362 -param model_out=model.363 -param next_chunk=chunks/362 trending.pig
wc -l trending.model.362
touch model.363
time pig -x local -param model_in=model.363 -param model_out=model.364 -param next_chunk=chunks/363 trending.pig
wc -l trending.model.363
touch model.364
time pig -x local -param model_in=model.364 -param model_out=model.365 -param next_chunk=chunks/364 trending.pig
wc -l trending.model.364
touch model.365
time pig -x local -param model_in=model.365 -param model_out=model.366 -param next_chunk=chunks/365 trending.pig
wc -l trending.model.365
touch model.366
time pig -x local -param model_in=model.366 -param model_out=model.367 -param next_chunk=chunks/366 trending.pig
wc -l trending.model.366
touch model.367
time pig -x local -param model_in=model.367 -param model_out=model.368 -param next_chunk=chunks/367 trending.pig
wc -l trending.model.367
touch model.368
time pig -x local -param model_in=model.368 -param model_out=model.369 -param next_chunk=chunks/368 trending.pig
wc -l trending.model.368
touch model.369
time pig -x local -param model_in=model.369 -param model_out=model.370 -param next_chunk=chunks/369 trending.pig
wc -l trending.model.369
touch model.370
time pig -x local -param model_in=model.370 -param model_out=model.371 -param next_chunk=chunks/370 trending.pig
wc -l trending.model.370
touch model.371
time pig -x local -param model_in=model.371 -param model_out=model.372 -param next_chunk=chunks/371 trending.pig
wc -l trending.model.371
touch model.372
time pig -x local -param model_in=model.372 -param model_out=model.373 -param next_chunk=chunks/372 trending.pig
wc -l trending.model.372
touch model.373
time pig -x local -param model_in=model.373 -param model_out=model.374 -param next_chunk=chunks/373 trending.pig
wc -l trending.model.373
touch model.374
time pig -x local -param model_in=model.374 -param model_out=model.375 -param next_chunk=chunks/374 trending.pig
wc -l trending.model.374
touch model.375
time pig -x local -param model_in=model.375 -param model_out=model.376 -param next_chunk=chunks/375 trending.pig
wc -l trending.model.375
touch model.376
time pig -x local -param model_in=model.376 -param model_out=model.377 -param next_chunk=chunks/376 trending.pig
wc -l trending.model.376
touch model.377
time pig -x local -param model_in=model.377 -param model_out=model.378 -param next_chunk=chunks/377 trending.pig
wc -l trending.model.377
touch model.378
time pig -x local -param model_in=model.378 -param model_out=model.379 -param next_chunk=chunks/378 trending.pig
wc -l trending.model.378
touch model.379
time pig -x local -param model_in=model.379 -param model_out=model.380 -param next_chunk=chunks/379 trending.pig
wc -l trending.model.379
touch model.380
time pig -x local -param model_in=model.380 -param model_out=model.381 -param next_chunk=chunks/380 trending.pig
wc -l trending.model.380
touch model.381
time pig -x local -param model_in=model.381 -param model_out=model.382 -param next_chunk=chunks/381 trending.pig
wc -l trending.model.381
touch model.382
time pig -x local -param model_in=model.382 -param model_out=model.383 -param next_chunk=chunks/382 trending.pig
wc -l trending.model.382
touch model.383
time pig -x local -param model_in=model.383 -param model_out=model.384 -param next_chunk=chunks/383 trending.pig
wc -l trending.model.383
touch model.384
time pig -x local -param model_in=model.384 -param model_out=model.385 -param next_chunk=chunks/384 trending.pig
wc -l trending.model.384
touch model.385
time pig -x local -param model_in=model.385 -param model_out=model.386 -param next_chunk=chunks/385 trending.pig
wc -l trending.model.385
touch model.386
time pig -x local -param model_in=model.386 -param model_out=model.387 -param next_chunk=chunks/386 trending.pig
wc -l trending.model.386
touch model.387
time pig -x local -param model_in=model.387 -param model_out=model.388 -param next_chunk=chunks/387 trending.pig
wc -l trending.model.387
touch model.388
time pig -x local -param model_in=model.388 -param model_out=model.389 -param next_chunk=chunks/388 trending.pig
wc -l trending.model.388
touch model.389
time pig -x local -param model_in=model.389 -param model_out=model.390 -param next_chunk=chunks/389 trending.pig
wc -l trending.model.389
touch model.390
time pig -x local -param model_in=model.390 -param model_out=model.391 -param next_chunk=chunks/390 trending.pig
wc -l trending.model.390
touch model.391
time pig -x local -param model_in=model.391 -param model_out=model.392 -param next_chunk=chunks/391 trending.pig
wc -l trending.model.391
touch model.392
time pig -x local -param model_in=model.392 -param model_out=model.393 -param next_chunk=chunks/392 trending.pig
wc -l trending.model.392
touch model.393
time pig -x local -param model_in=model.393 -param model_out=model.394 -param next_chunk=chunks/393 trending.pig
wc -l trending.model.393
touch model.394
time pig -x local -param model_in=model.394 -param model_out=model.395 -param next_chunk=chunks/394 trending.pig
wc -l trending.model.394
touch model.395
time pig -x local -param model_in=model.395 -param model_out=model.396 -param next_chunk=chunks/395 trending.pig
wc -l trending.model.395
touch model.396
time pig -x local -param model_in=model.396 -param model_out=model.397 -param next_chunk=chunks/396 trending.pig
wc -l trending.model.396
touch model.397
time pig -x local -param model_in=model.397 -param model_out=model.398 -param next_chunk=chunks/397 trending.pig
wc -l trending.model.397
touch model.398
time pig -x local -param model_in=model.398 -param model_out=model.399 -param next_chunk=chunks/398 trending.pig
wc -l trending.model.398
touch model.399
time pig -x local -param model_in=model.399 -param model_out=model.400 -param next_chunk=chunks/399 trending.pig
wc -l trending.model.399
touch model.400
time pig -x local -param model_in=model.400 -param model_out=model.401 -param next_chunk=chunks/400 trending.pig
wc -l trending.model.400
touch model.401
time pig -x local -param model_in=model.401 -param model_out=model.402 -param next_chunk=chunks/401 trending.pig
wc -l trending.model.401
touch model.402
time pig -x local -param model_in=model.402 -param model_out=model.403 -param next_chunk=chunks/402 trending.pig
wc -l trending.model.402
touch model.403
time pig -x local -param model_in=model.403 -param model_out=model.404 -param next_chunk=chunks/403 trending.pig
wc -l trending.model.403
touch model.404
time pig -x local -param model_in=model.404 -param model_out=model.405 -param next_chunk=chunks/404 trending.pig
wc -l trending.model.404
touch model.405
time pig -x local -param model_in=model.405 -param model_out=model.406 -param next_chunk=chunks/405 trending.pig
wc -l trending.model.405
touch model.406
time pig -x local -param model_in=model.406 -param model_out=model.407 -param next_chunk=chunks/406 trending.pig
wc -l trending.model.406
touch model.407
time pig -x local -param model_in=model.407 -param model_out=model.408 -param next_chunk=chunks/407 trending.pig
wc -l trending.model.407
touch model.408
time pig -x local -param model_in=model.408 -param model_out=model.409 -param next_chunk=chunks/408 trending.pig
wc -l trending.model.408
touch model.409
time pig -x local -param model_in=model.409 -param model_out=model.410 -param next_chunk=chunks/409 trending.pig
wc -l trending.model.409
touch model.410
time pig -x local -param model_in=model.410 -param model_out=model.411 -param next_chunk=chunks/410 trending.pig
wc -l trending.model.410
touch model.411
time pig -x local -param model_in=model.411 -param model_out=model.412 -param next_chunk=chunks/411 trending.pig
wc -l trending.model.411
touch model.412
time pig -x local -param model_in=model.412 -param model_out=model.413 -param next_chunk=chunks/412 trending.pig
wc -l trending.model.412
touch model.413
time pig -x local -param model_in=model.413 -param model_out=model.414 -param next_chunk=chunks/413 trending.pig
wc -l trending.model.413
touch model.414
time pig -x local -param model_in=model.414 -param model_out=model.415 -param next_chunk=chunks/414 trending.pig
wc -l trending.model.414
touch model.415
time pig -x local -param model_in=model.415 -param model_out=model.416 -param next_chunk=chunks/415 trending.pig
wc -l trending.model.415
touch model.416
time pig -x local -param model_in=model.416 -param model_out=model.417 -param next_chunk=chunks/416 trending.pig
wc -l trending.model.416
touch model.417
time pig -x local -param model_in=model.417 -param model_out=model.418 -param next_chunk=chunks/417 trending.pig
wc -l trending.model.417
touch model.418
time pig -x local -param model_in=model.418 -param model_out=model.419 -param next_chunk=chunks/418 trending.pig
wc -l trending.model.418
touch model.419
time pig -x local -param model_in=model.419 -param model_out=model.420 -param next_chunk=chunks/419 trending.pig
wc -l trending.model.419
touch model.420
time pig -x local -param model_in=model.420 -param model_out=model.421 -param next_chunk=chunks/420 trending.pig
wc -l trending.model.420
touch model.421
time pig -x local -param model_in=model.421 -param model_out=model.422 -param next_chunk=chunks/421 trending.pig
wc -l trending.model.421
touch model.422
time pig -x local -param model_in=model.422 -param model_out=model.423 -param next_chunk=chunks/422 trending.pig
wc -l trending.model.422
touch model.423
time pig -x local -param model_in=model.423 -param model_out=model.424 -param next_chunk=chunks/423 trending.pig
wc -l trending.model.423
touch model.424
time pig -x local -param model_in=model.424 -param model_out=model.425 -param next_chunk=chunks/424 trending.pig
wc -l trending.model.424
touch model.425
time pig -x local -param model_in=model.425 -param model_out=model.426 -param next_chunk=chunks/425 trending.pig
wc -l trending.model.425
touch model.426
time pig -x local -param model_in=model.426 -param model_out=model.427 -param next_chunk=chunks/426 trending.pig
wc -l trending.model.426
touch model.427
time pig -x local -param model_in=model.427 -param model_out=model.428 -param next_chunk=chunks/427 trending.pig
wc -l trending.model.427
touch model.428
time pig -x local -param model_in=model.428 -param model_out=model.429 -param next_chunk=chunks/428 trending.pig
wc -l trending.model.428
touch model.429
time pig -x local -param model_in=model.429 -param model_out=model.430 -param next_chunk=chunks/429 trending.pig
wc -l trending.model.429
touch model.430
time pig -x local -param model_in=model.430 -param model_out=model.431 -param next_chunk=chunks/430 trending.pig
wc -l trending.model.430
touch model.431
time pig -x local -param model_in=model.431 -param model_out=model.432 -param next_chunk=chunks/431 trending.pig
wc -l trending.model.431
touch model.432
time pig -x local -param model_in=model.432 -param model_out=model.433 -param next_chunk=chunks/432 trending.pig
wc -l trending.model.432
touch model.433
time pig -x local -param model_in=model.433 -param model_out=model.434 -param next_chunk=chunks/433 trending.pig
wc -l trending.model.433
touch model.434
time pig -x local -param model_in=model.434 -param model_out=model.435 -param next_chunk=chunks/434 trending.pig
wc -l trending.model.434
touch model.435
time pig -x local -param model_in=model.435 -param model_out=model.436 -param next_chunk=chunks/435 trending.pig
wc -l trending.model.435
touch model.436
time pig -x local -param model_in=model.436 -param model_out=model.437 -param next_chunk=chunks/436 trending.pig
wc -l trending.model.436
touch model.437
time pig -x local -param model_in=model.437 -param model_out=model.438 -param next_chunk=chunks/437 trending.pig
wc -l trending.model.437
touch model.438
time pig -x local -param model_in=model.438 -param model_out=model.439 -param next_chunk=chunks/438 trending.pig
wc -l trending.model.438
touch model.439
time pig -x local -param model_in=model.439 -param model_out=model.440 -param next_chunk=chunks/439 trending.pig
wc -l trending.model.439
touch model.440
time pig -x local -param model_in=model.440 -param model_out=model.441 -param next_chunk=chunks/440 trending.pig
wc -l trending.model.440
touch model.441
time pig -x local -param model_in=model.441 -param model_out=model.442 -param next_chunk=chunks/441 trending.pig
wc -l trending.model.441
touch model.442
time pig -x local -param model_in=model.442 -param model_out=model.443 -param next_chunk=chunks/442 trending.pig
wc -l trending.model.442
touch model.443
time pig -x local -param model_in=model.443 -param model_out=model.444 -param next_chunk=chunks/443 trending.pig
wc -l trending.model.443
touch model.444
time pig -x local -param model_in=model.444 -param model_out=model.445 -param next_chunk=chunks/444 trending.pig
wc -l trending.model.444
touch model.445
time pig -x local -param model_in=model.445 -param model_out=model.446 -param next_chunk=chunks/445 trending.pig
wc -l trending.model.445
touch model.446
time pig -x local -param model_in=model.446 -param model_out=model.447 -param next_chunk=chunks/446 trending.pig
wc -l trending.model.446
touch model.447
time pig -x local -param model_in=model.447 -param model_out=model.448 -param next_chunk=chunks/447 trending.pig
wc -l trending.model.447
touch model.448
time pig -x local -param model_in=model.448 -param model_out=model.449 -param next_chunk=chunks/448 trending.pig
wc -l trending.model.448
touch model.449
time pig -x local -param model_in=model.449 -param model_out=model.450 -param next_chunk=chunks/449 trending.pig
wc -l trending.model.449
touch model.450
time pig -x local -param model_in=model.450 -param model_out=model.451 -param next_chunk=chunks/450 trending.pig
wc -l trending.model.450
touch model.451
time pig -x local -param model_in=model.451 -param model_out=model.452 -param next_chunk=chunks/451 trending.pig
wc -l trending.model.451
touch model.452
time pig -x local -param model_in=model.452 -param model_out=model.453 -param next_chunk=chunks/452 trending.pig
wc -l trending.model.452
touch model.453
time pig -x local -param model_in=model.453 -param model_out=model.454 -param next_chunk=chunks/453 trending.pig
wc -l trending.model.453
touch model.454
time pig -x local -param model_in=model.454 -param model_out=model.455 -param next_chunk=chunks/454 trending.pig
wc -l trending.model.454
touch model.455
time pig -x local -param model_in=model.455 -param model_out=model.456 -param next_chunk=chunks/455 trending.pig
wc -l trending.model.455
touch model.456
time pig -x local -param model_in=model.456 -param model_out=model.457 -param next_chunk=chunks/456 trending.pig
wc -l trending.model.456
touch model.457
time pig -x local -param model_in=model.457 -param model_out=model.458 -param next_chunk=chunks/457 trending.pig
wc -l trending.model.457
touch model.458
time pig -x local -param model_in=model.458 -param model_out=model.459 -param next_chunk=chunks/458 trending.pig
wc -l trending.model.458
touch model.459
time pig -x local -param model_in=model.459 -param model_out=model.460 -param next_chunk=chunks/459 trending.pig
wc -l trending.model.459
touch model.460
time pig -x local -param model_in=model.460 -param model_out=model.461 -param next_chunk=chunks/460 trending.pig
wc -l trending.model.460
touch model.461
time pig -x local -param model_in=model.461 -param model_out=model.462 -param next_chunk=chunks/461 trending.pig
wc -l trending.model.461
touch model.462
time pig -x local -param model_in=model.462 -param model_out=model.463 -param next_chunk=chunks/462 trending.pig
wc -l trending.model.462
touch model.463
time pig -x local -param model_in=model.463 -param model_out=model.464 -param next_chunk=chunks/463 trending.pig
wc -l trending.model.463
touch model.464
time pig -x local -param model_in=model.464 -param model_out=model.465 -param next_chunk=chunks/464 trending.pig
wc -l trending.model.464
touch model.465
time pig -x local -param model_in=model.465 -param model_out=model.466 -param next_chunk=chunks/465 trending.pig
wc -l trending.model.465
touch model.466
time pig -x local -param model_in=model.466 -param model_out=model.467 -param next_chunk=chunks/466 trending.pig
wc -l trending.model.466
touch model.467
time pig -x local -param model_in=model.467 -param model_out=model.468 -param next_chunk=chunks/467 trending.pig
wc -l trending.model.467
touch model.468
time pig -x local -param model_in=model.468 -param model_out=model.469 -param next_chunk=chunks/468 trending.pig
wc -l trending.model.468
touch model.469
time pig -x local -param model_in=model.469 -param model_out=model.470 -param next_chunk=chunks/469 trending.pig
wc -l trending.model.469
touch model.470
time pig -x local -param model_in=model.470 -param model_out=model.471 -param next_chunk=chunks/470 trending.pig
wc -l trending.model.470
touch model.471
time pig -x local -param model_in=model.471 -param model_out=model.472 -param next_chunk=chunks/471 trending.pig
wc -l trending.model.471
touch model.472
time pig -x local -param model_in=model.472 -param model_out=model.473 -param next_chunk=chunks/472 trending.pig
wc -l trending.model.472
touch model.473
time pig -x local -param model_in=model.473 -param model_out=model.474 -param next_chunk=chunks/473 trending.pig
wc -l trending.model.473
touch model.474
time pig -x local -param model_in=model.474 -param model_out=model.475 -param next_chunk=chunks/474 trending.pig
wc -l trending.model.474
touch model.475
time pig -x local -param model_in=model.475 -param model_out=model.476 -param next_chunk=chunks/475 trending.pig
wc -l trending.model.475
touch model.476
time pig -x local -param model_in=model.476 -param model_out=model.477 -param next_chunk=chunks/476 trending.pig
wc -l trending.model.476
touch model.477
time pig -x local -param model_in=model.477 -param model_out=model.478 -param next_chunk=chunks/477 trending.pig
wc -l trending.model.477
touch model.478
time pig -x local -param model_in=model.478 -param model_out=model.479 -param next_chunk=chunks/478 trending.pig
wc -l trending.model.478
touch model.479
time pig -x local -param model_in=model.479 -param model_out=model.480 -param next_chunk=chunks/479 trending.pig
wc -l trending.model.479
touch model.480
time pig -x local -param model_in=model.480 -param model_out=model.481 -param next_chunk=chunks/480 trending.pig
wc -l trending.model.480
touch model.481
time pig -x local -param model_in=model.481 -param model_out=model.482 -param next_chunk=chunks/481 trending.pig
wc -l trending.model.481
touch model.482
time pig -x local -param model_in=model.482 -param model_out=model.483 -param next_chunk=chunks/482 trending.pig
wc -l trending.model.482
touch model.483
time pig -x local -param model_in=model.483 -param model_out=model.484 -param next_chunk=chunks/483 trending.pig
wc -l trending.model.483
touch model.484
time pig -x local -param model_in=model.484 -param model_out=model.485 -param next_chunk=chunks/484 trending.pig
wc -l trending.model.484
touch model.485
time pig -x local -param model_in=model.485 -param model_out=model.486 -param next_chunk=chunks/485 trending.pig
wc -l trending.model.485
touch model.486
time pig -x local -param model_in=model.486 -param model_out=model.487 -param next_chunk=chunks/486 trending.pig
wc -l trending.model.486
touch model.487
time pig -x local -param model_in=model.487 -param model_out=model.488 -param next_chunk=chunks/487 trending.pig
wc -l trending.model.487
touch model.488
time pig -x local -param model_in=model.488 -param model_out=model.489 -param next_chunk=chunks/488 trending.pig
wc -l trending.model.488
touch model.489
time pig -x local -param model_in=model.489 -param model_out=model.490 -param next_chunk=chunks/489 trending.pig
wc -l trending.model.489
touch model.490
time pig -x local -param model_in=model.490 -param model_out=model.491 -param next_chunk=chunks/490 trending.pig
wc -l trending.model.490
touch model.491
time pig -x local -param model_in=model.491 -param model_out=model.492 -param next_chunk=chunks/491 trending.pig
wc -l trending.model.491
touch model.492
time pig -x local -param model_in=model.492 -param model_out=model.493 -param next_chunk=chunks/492 trending.pig
wc -l trending.model.492
touch model.493
time pig -x local -param model_in=model.493 -param model_out=model.494 -param next_chunk=chunks/493 trending.pig
wc -l trending.model.493
touch model.494
time pig -x local -param model_in=model.494 -param model_out=model.495 -param next_chunk=chunks/494 trending.pig
wc -l trending.model.494
touch model.495
time pig -x local -param model_in=model.495 -param model_out=model.496 -param next_chunk=chunks/495 trending.pig
wc -l trending.model.495
touch model.496
time pig -x local -param model_in=model.496 -param model_out=model.497 -param next_chunk=chunks/496 trending.pig
wc -l trending.model.496
touch model.497
time pig -x local -param model_in=model.497 -param model_out=model.498 -param next_chunk=chunks/497 trending.pig
wc -l trending.model.497
touch model.498
time pig -x local -param model_in=model.498 -param model_out=model.499 -param next_chunk=chunks/498 trending.pig
wc -l trending.model.498
touch model.499
time pig -x local -param model_in=model.499 -param model_out=model.500 -param next_chunk=chunks/499 trending.pig
wc -l trending.model.499
touch model.500
time pig -x local -param model_in=model.500 -param model_out=model.501 -param next_chunk=chunks/500 trending.pig
wc -l trending.model.500
touch model.501
time pig -x local -param model_in=model.501 -param model_out=model.502 -param next_chunk=chunks/501 trending.pig
wc -l trending.model.501
touch model.502
time pig -x local -param model_in=model.502 -param model_out=model.503 -param next_chunk=chunks/502 trending.pig
wc -l trending.model.502
touch model.503
time pig -x local -param model_in=model.503 -param model_out=model.504 -param next_chunk=chunks/503 trending.pig
wc -l trending.model.503
touch model.504
time pig -x local -param model_in=model.504 -param model_out=model.505 -param next_chunk=chunks/504 trending.pig
wc -l trending.model.504
touch model.505
time pig -x local -param model_in=model.505 -param model_out=model.506 -param next_chunk=chunks/505 trending.pig
wc -l trending.model.505
touch model.506
time pig -x local -param model_in=model.506 -param model_out=model.507 -param next_chunk=chunks/506 trending.pig
wc -l trending.model.506
touch model.507
time pig -x local -param model_in=model.507 -param model_out=model.508 -param next_chunk=chunks/507 trending.pig
wc -l trending.model.507
touch model.508
time pig -x local -param model_in=model.508 -param model_out=model.509 -param next_chunk=chunks/508 trending.pig
wc -l trending.model.508
touch model.509
time pig -x local -param model_in=model.509 -param model_out=model.510 -param next_chunk=chunks/509 trending.pig
wc -l trending.model.509
touch model.510
time pig -x local -param model_in=model.510 -param model_out=model.511 -param next_chunk=chunks/510 trending.pig
wc -l trending.model.510
touch model.511
time pig -x local -param model_in=model.511 -param model_out=model.512 -param next_chunk=chunks/511 trending.pig
wc -l trending.model.511
touch model.512
time pig -x local -param model_in=model.512 -param model_out=model.513 -param next_chunk=chunks/512 trending.pig
wc -l trending.model.512
touch model.513
time pig -x local -param model_in=model.513 -param model_out=model.514 -param next_chunk=chunks/513 trending.pig
wc -l trending.model.513
touch model.514
time pig -x local -param model_in=model.514 -param model_out=model.515 -param next_chunk=chunks/514 trending.pig
wc -l trending.model.514
touch model.515
time pig -x local -param model_in=model.515 -param model_out=model.516 -param next_chunk=chunks/515 trending.pig
wc -l trending.model.515
touch model.516
time pig -x local -param model_in=model.516 -param model_out=model.517 -param next_chunk=chunks/516 trending.pig
wc -l trending.model.516
touch model.517
time pig -x local -param model_in=model.517 -param model_out=model.518 -param next_chunk=chunks/517 trending.pig
wc -l trending.model.517
touch model.518
time pig -x local -param model_in=model.518 -param model_out=model.519 -param next_chunk=chunks/518 trending.pig
wc -l trending.model.518
touch model.519
time pig -x local -param model_in=model.519 -param model_out=model.520 -param next_chunk=chunks/519 trending.pig
wc -l trending.model.519
touch model.520
time pig -x local -param model_in=model.520 -param model_out=model.521 -param next_chunk=chunks/520 trending.pig
wc -l trending.model.520
touch model.521
time pig -x local -param model_in=model.521 -param model_out=model.522 -param next_chunk=chunks/521 trending.pig
wc -l trending.model.521
touch model.522
time pig -x local -param model_in=model.522 -param model_out=model.523 -param next_chunk=chunks/522 trending.pig
wc -l trending.model.522
touch model.523
time pig -x local -param model_in=model.523 -param model_out=model.524 -param next_chunk=chunks/523 trending.pig
wc -l trending.model.523
touch model.524
time pig -x local -param model_in=model.524 -param model_out=model.525 -param next_chunk=chunks/524 trending.pig
wc -l trending.model.524
touch model.525
time pig -x local -param model_in=model.525 -param model_out=model.526 -param next_chunk=chunks/525 trending.pig
wc -l trending.model.525
touch model.526
time pig -x local -param model_in=model.526 -param model_out=model.527 -param next_chunk=chunks/526 trending.pig
wc -l trending.model.526
touch model.527
time pig -x local -param model_in=model.527 -param model_out=model.528 -param next_chunk=chunks/527 trending.pig
wc -l trending.model.527
touch model.528
time pig -x local -param model_in=model.528 -param model_out=model.529 -param next_chunk=chunks/528 trending.pig
wc -l trending.model.528
touch model.529
time pig -x local -param model_in=model.529 -param model_out=model.530 -param next_chunk=chunks/529 trending.pig
wc -l trending.model.529
touch model.530
time pig -x local -param model_in=model.530 -param model_out=model.531 -param next_chunk=chunks/530 trending.pig
wc -l trending.model.530
touch model.531
time pig -x local -param model_in=model.531 -param model_out=model.532 -param next_chunk=chunks/531 trending.pig
wc -l trending.model.531
touch model.532
time pig -x local -param model_in=model.532 -param model_out=model.533 -param next_chunk=chunks/532 trending.pig
wc -l trending.model.532
touch model.533
time pig -x local -param model_in=model.533 -param model_out=model.534 -param next_chunk=chunks/533 trending.pig
wc -l trending.model.533
touch model.534
time pig -x local -param model_in=model.534 -param model_out=model.535 -param next_chunk=chunks/534 trending.pig
wc -l trending.model.534
touch model.535
time pig -x local -param model_in=model.535 -param model_out=model.536 -param next_chunk=chunks/535 trending.pig
wc -l trending.model.535
touch model.536
time pig -x local -param model_in=model.536 -param model_out=model.537 -param next_chunk=chunks/536 trending.pig
wc -l trending.model.536
touch model.537
time pig -x local -param model_in=model.537 -param model_out=model.538 -param next_chunk=chunks/537 trending.pig
wc -l trending.model.537
touch model.538
time pig -x local -param model_in=model.538 -param model_out=model.539 -param next_chunk=chunks/538 trending.pig
wc -l trending.model.538
touch model.539
time pig -x local -param model_in=model.539 -param model_out=model.540 -param next_chunk=chunks/539 trending.pig
wc -l trending.model.539
touch model.540
time pig -x local -param model_in=model.540 -param model_out=model.541 -param next_chunk=chunks/540 trending.pig
wc -l trending.model.540
touch model.541
time pig -x local -param model_in=model.541 -param model_out=model.542 -param next_chunk=chunks/541 trending.pig
wc -l trending.model.541
touch model.542
time pig -x local -param model_in=model.542 -param model_out=model.543 -param next_chunk=chunks/542 trending.pig
wc -l trending.model.542
touch model.543
time pig -x local -param model_in=model.543 -param model_out=model.544 -param next_chunk=chunks/543 trending.pig
wc -l trending.model.543
touch model.544
time pig -x local -param model_in=model.544 -param model_out=model.545 -param next_chunk=chunks/544 trending.pig
wc -l trending.model.544
touch model.545
time pig -x local -param model_in=model.545 -param model_out=model.546 -param next_chunk=chunks/545 trending.pig
wc -l trending.model.545
touch model.546
time pig -x local -param model_in=model.546 -param model_out=model.547 -param next_chunk=chunks/546 trending.pig
wc -l trending.model.546
touch model.547
time pig -x local -param model_in=model.547 -param model_out=model.548 -param next_chunk=chunks/547 trending.pig
wc -l trending.model.547
touch model.548
time pig -x local -param model_in=model.548 -param model_out=model.549 -param next_chunk=chunks/548 trending.pig
wc -l trending.model.548
touch model.549
time pig -x local -param model_in=model.549 -param model_out=model.550 -param next_chunk=chunks/549 trending.pig
wc -l trending.model.549
touch model.550
time pig -x local -param model_in=model.550 -param model_out=model.551 -param next_chunk=chunks/550 trending.pig
wc -l trending.model.550
touch model.551
time pig -x local -param model_in=model.551 -param model_out=model.552 -param next_chunk=chunks/551 trending.pig
wc -l trending.model.551
touch model.552
time pig -x local -param model_in=model.552 -param model_out=model.553 -param next_chunk=chunks/552 trending.pig
wc -l trending.model.552
touch model.553
time pig -x local -param model_in=model.553 -param model_out=model.554 -param next_chunk=chunks/553 trending.pig
wc -l trending.model.553
touch model.554
time pig -x local -param model_in=model.554 -param model_out=model.555 -param next_chunk=chunks/554 trending.pig
wc -l trending.model.554
touch model.555
time pig -x local -param model_in=model.555 -param model_out=model.556 -param next_chunk=chunks/555 trending.pig
wc -l trending.model.555
touch model.556
time pig -x local -param model_in=model.556 -param model_out=model.557 -param next_chunk=chunks/556 trending.pig
wc -l trending.model.556
touch model.557
time pig -x local -param model_in=model.557 -param model_out=model.558 -param next_chunk=chunks/557 trending.pig
wc -l trending.model.557
touch model.558
time pig -x local -param model_in=model.558 -param model_out=model.559 -param next_chunk=chunks/558 trending.pig
wc -l trending.model.558
touch model.559
time pig -x local -param model_in=model.559 -param model_out=model.560 -param next_chunk=chunks/559 trending.pig
wc -l trending.model.559
touch model.560
time pig -x local -param model_in=model.560 -param model_out=model.561 -param next_chunk=chunks/560 trending.pig
wc -l trending.model.560
touch model.561
time pig -x local -param model_in=model.561 -param model_out=model.562 -param next_chunk=chunks/561 trending.pig
wc -l trending.model.561
touch model.562
time pig -x local -param model_in=model.562 -param model_out=model.563 -param next_chunk=chunks/562 trending.pig
wc -l trending.model.562
touch model.563
time pig -x local -param model_in=model.563 -param model_out=model.564 -param next_chunk=chunks/563 trending.pig
wc -l trending.model.563
touch model.564
time pig -x local -param model_in=model.564 -param model_out=model.565 -param next_chunk=chunks/564 trending.pig
wc -l trending.model.564
touch model.565
time pig -x local -param model_in=model.565 -param model_out=model.566 -param next_chunk=chunks/565 trending.pig
wc -l trending.model.565
touch model.566
time pig -x local -param model_in=model.566 -param model_out=model.567 -param next_chunk=chunks/566 trending.pig
wc -l trending.model.566
touch model.567
time pig -x local -param model_in=model.567 -param model_out=model.568 -param next_chunk=chunks/567 trending.pig
wc -l trending.model.567
touch model.568
time pig -x local -param model_in=model.568 -param model_out=model.569 -param next_chunk=chunks/568 trending.pig
wc -l trending.model.568
touch model.569
time pig -x local -param model_in=model.569 -param model_out=model.570 -param next_chunk=chunks/569 trending.pig
wc -l trending.model.569
touch model.570
time pig -x local -param model_in=model.570 -param model_out=model.571 -param next_chunk=chunks/570 trending.pig
wc -l trending.model.570
touch model.571
time pig -x local -param model_in=model.571 -param model_out=model.572 -param next_chunk=chunks/571 trending.pig
wc -l trending.model.571
touch model.572
time pig -x local -param model_in=model.572 -param model_out=model.573 -param next_chunk=chunks/572 trending.pig
wc -l trending.model.572
touch model.573
time pig -x local -param model_in=model.573 -param model_out=model.574 -param next_chunk=chunks/573 trending.pig
wc -l trending.model.573
touch model.574
time pig -x local -param model_in=model.574 -param model_out=model.575 -param next_chunk=chunks/574 trending.pig
wc -l trending.model.574
touch model.575
time pig -x local -param model_in=model.575 -param model_out=model.576 -param next_chunk=chunks/575 trending.pig
wc -l trending.model.575
touch model.576
time pig -x local -param model_in=model.576 -param model_out=model.577 -param next_chunk=chunks/576 trending.pig
wc -l trending.model.576
touch model.577
time pig -x local -param model_in=model.577 -param model_out=model.578 -param next_chunk=chunks/577 trending.pig
wc -l trending.model.577
touch model.578
time pig -x local -param model_in=model.578 -param model_out=model.579 -param next_chunk=chunks/578 trending.pig
wc -l trending.model.578
touch model.579
time pig -x local -param model_in=model.579 -param model_out=model.580 -param next_chunk=chunks/579 trending.pig
wc -l trending.model.579
touch model.580
time pig -x local -param model_in=model.580 -param model_out=model.581 -param next_chunk=chunks/580 trending.pig
wc -l trending.model.580
touch model.581
time pig -x local -param model_in=model.581 -param model_out=model.582 -param next_chunk=chunks/581 trending.pig
wc -l trending.model.581
touch model.582
time pig -x local -param model_in=model.582 -param model_out=model.583 -param next_chunk=chunks/582 trending.pig
wc -l trending.model.582
touch model.583
time pig -x local -param model_in=model.583 -param model_out=model.584 -param next_chunk=chunks/583 trending.pig
wc -l trending.model.583
touch model.584
time pig -x local -param model_in=model.584 -param model_out=model.585 -param next_chunk=chunks/584 trending.pig
wc -l trending.model.584
touch model.585
time pig -x local -param model_in=model.585 -param model_out=model.586 -param next_chunk=chunks/585 trending.pig
wc -l trending.model.585
touch model.586
time pig -x local -param model_in=model.586 -param model_out=model.587 -param next_chunk=chunks/586 trending.pig
wc -l trending.model.586
touch model.587
time pig -x local -param model_in=model.587 -param model_out=model.588 -param next_chunk=chunks/587 trending.pig
wc -l trending.model.587
touch model.588
time pig -x local -param model_in=model.588 -param model_out=model.589 -param next_chunk=chunks/588 trending.pig
wc -l trending.model.588
touch model.589
time pig -x local -param model_in=model.589 -param model_out=model.590 -param next_chunk=chunks/589 trending.pig
wc -l trending.model.589
touch model.590
time pig -x local -param model_in=model.590 -param model_out=model.591 -param next_chunk=chunks/590 trending.pig
wc -l trending.model.590
touch model.591
time pig -x local -param model_in=model.591 -param model_out=model.592 -param next_chunk=chunks/591 trending.pig
wc -l trending.model.591
touch model.592
time pig -x local -param model_in=model.592 -param model_out=model.593 -param next_chunk=chunks/592 trending.pig
wc -l trending.model.592
touch model.593
time pig -x local -param model_in=model.593 -param model_out=model.594 -param next_chunk=chunks/593 trending.pig
wc -l trending.model.593
touch model.594
time pig -x local -param model_in=model.594 -param model_out=model.595 -param next_chunk=chunks/594 trending.pig
wc -l trending.model.594
touch model.595
time pig -x local -param model_in=model.595 -param model_out=model.596 -param next_chunk=chunks/595 trending.pig
wc -l trending.model.595
touch model.596
time pig -x local -param model_in=model.596 -param model_out=model.597 -param next_chunk=chunks/596 trending.pig
wc -l trending.model.596
touch model.597
time pig -x local -param model_in=model.597 -param model_out=model.598 -param next_chunk=chunks/597 trending.pig
wc -l trending.model.597
touch model.598
time pig -x local -param model_in=model.598 -param model_out=model.599 -param next_chunk=chunks/598 trending.pig
wc -l trending.model.598
touch model.599
time pig -x local -param model_in=model.599 -param model_out=model.600 -param next_chunk=chunks/599 trending.pig
wc -l trending.model.599
touch model.600
time pig -x local -param model_in=model.600 -param model_out=model.601 -param next_chunk=chunks/600 trending.pig
wc -l trending.model.600
touch model.601
time pig -x local -param model_in=model.601 -param model_out=model.602 -param next_chunk=chunks/601 trending.pig
wc -l trending.model.601
touch model.602
time pig -x local -param model_in=model.602 -param model_out=model.603 -param next_chunk=chunks/602 trending.pig
wc -l trending.model.602
touch model.603
time pig -x local -param model_in=model.603 -param model_out=model.604 -param next_chunk=chunks/603 trending.pig
wc -l trending.model.603
touch model.604
time pig -x local -param model_in=model.604 -param model_out=model.605 -param next_chunk=chunks/604 trending.pig
wc -l trending.model.604
touch model.605
time pig -x local -param model_in=model.605 -param model_out=model.606 -param next_chunk=chunks/605 trending.pig
wc -l trending.model.605
touch model.606
time pig -x local -param model_in=model.606 -param model_out=model.607 -param next_chunk=chunks/606 trending.pig
wc -l trending.model.606
touch model.607
time pig -x local -param model_in=model.607 -param model_out=model.608 -param next_chunk=chunks/607 trending.pig
wc -l trending.model.607
touch model.608
time pig -x local -param model_in=model.608 -param model_out=model.609 -param next_chunk=chunks/608 trending.pig
wc -l trending.model.608
touch model.609
time pig -x local -param model_in=model.609 -param model_out=model.610 -param next_chunk=chunks/609 trending.pig
wc -l trending.model.609
touch model.610
time pig -x local -param model_in=model.610 -param model_out=model.611 -param next_chunk=chunks/610 trending.pig
wc -l trending.model.610
touch model.611
time pig -x local -param model_in=model.611 -param model_out=model.612 -param next_chunk=chunks/611 trending.pig
wc -l trending.model.611
touch model.612
time pig -x local -param model_in=model.612 -param model_out=model.613 -param next_chunk=chunks/612 trending.pig
wc -l trending.model.612
touch model.613
time pig -x local -param model_in=model.613 -param model_out=model.614 -param next_chunk=chunks/613 trending.pig
wc -l trending.model.613
touch model.614
time pig -x local -param model_in=model.614 -param model_out=model.615 -param next_chunk=chunks/614 trending.pig
wc -l trending.model.614
touch model.615
time pig -x local -param model_in=model.615 -param model_out=model.616 -param next_chunk=chunks/615 trending.pig
wc -l trending.model.615
touch model.616
time pig -x local -param model_in=model.616 -param model_out=model.617 -param next_chunk=chunks/616 trending.pig
wc -l trending.model.616
touch model.617
time pig -x local -param model_in=model.617 -param model_out=model.618 -param next_chunk=chunks/617 trending.pig
wc -l trending.model.617
touch model.618
time pig -x local -param model_in=model.618 -param model_out=model.619 -param next_chunk=chunks/618 trending.pig
wc -l trending.model.618
touch model.619
time pig -x local -param model_in=model.619 -param model_out=model.620 -param next_chunk=chunks/619 trending.pig
wc -l trending.model.619
touch model.620
time pig -x local -param model_in=model.620 -param model_out=model.621 -param next_chunk=chunks/620 trending.pig
wc -l trending.model.620
touch model.621
time pig -x local -param model_in=model.621 -param model_out=model.622 -param next_chunk=chunks/621 trending.pig
wc -l trending.model.621
touch model.622
time pig -x local -param model_in=model.622 -param model_out=model.623 -param next_chunk=chunks/622 trending.pig
wc -l trending.model.622
touch model.623
time pig -x local -param model_in=model.623 -param model_out=model.624 -param next_chunk=chunks/623 trending.pig
wc -l trending.model.623
touch model.624
time pig -x local -param model_in=model.624 -param model_out=model.625 -param next_chunk=chunks/624 trending.pig
wc -l trending.model.624
touch model.625
time pig -x local -param model_in=model.625 -param model_out=model.626 -param next_chunk=chunks/625 trending.pig
wc -l trending.model.625
touch model.626
time pig -x local -param model_in=model.626 -param model_out=model.627 -param next_chunk=chunks/626 trending.pig
wc -l trending.model.626
touch model.627
time pig -x local -param model_in=model.627 -param model_out=model.628 -param next_chunk=chunks/627 trending.pig
wc -l trending.model.627
touch model.628
time pig -x local -param model_in=model.628 -param model_out=model.629 -param next_chunk=chunks/628 trending.pig
wc -l trending.model.628
touch model.629
time pig -x local -param model_in=model.629 -param model_out=model.630 -param next_chunk=chunks/629 trending.pig
wc -l trending.model.629
touch model.630
time pig -x local -param model_in=model.630 -param model_out=model.631 -param next_chunk=chunks/630 trending.pig
wc -l trending.model.630
touch model.631
time pig -x local -param model_in=model.631 -param model_out=model.632 -param next_chunk=chunks/631 trending.pig
wc -l trending.model.631
touch model.632
time pig -x local -param model_in=model.632 -param model_out=model.633 -param next_chunk=chunks/632 trending.pig
wc -l trending.model.632
touch model.633
time pig -x local -param model_in=model.633 -param model_out=model.634 -param next_chunk=chunks/633 trending.pig
wc -l trending.model.633
touch model.634
time pig -x local -param model_in=model.634 -param model_out=model.635 -param next_chunk=chunks/634 trending.pig
wc -l trending.model.634
touch model.635
time pig -x local -param model_in=model.635 -param model_out=model.636 -param next_chunk=chunks/635 trending.pig
wc -l trending.model.635
touch model.636
time pig -x local -param model_in=model.636 -param model_out=model.637 -param next_chunk=chunks/636 trending.pig
wc -l trending.model.636
touch model.637
time pig -x local -param model_in=model.637 -param model_out=model.638 -param next_chunk=chunks/637 trending.pig
wc -l trending.model.637
touch model.638
time pig -x local -param model_in=model.638 -param model_out=model.639 -param next_chunk=chunks/638 trending.pig
wc -l trending.model.638
touch model.639
time pig -x local -param model_in=model.639 -param model_out=model.640 -param next_chunk=chunks/639 trending.pig
wc -l trending.model.639
touch model.640
time pig -x local -param model_in=model.640 -param model_out=model.641 -param next_chunk=chunks/640 trending.pig
wc -l trending.model.640
touch model.641
time pig -x local -param model_in=model.641 -param model_out=model.642 -param next_chunk=chunks/641 trending.pig
wc -l trending.model.641
touch model.642
time pig -x local -param model_in=model.642 -param model_out=model.643 -param next_chunk=chunks/642 trending.pig
wc -l trending.model.642
touch model.643
time pig -x local -param model_in=model.643 -param model_out=model.644 -param next_chunk=chunks/643 trending.pig
wc -l trending.model.643
touch model.644
time pig -x local -param model_in=model.644 -param model_out=model.645 -param next_chunk=chunks/644 trending.pig
wc -l trending.model.644
touch model.645
time pig -x local -param model_in=model.645 -param model_out=model.646 -param next_chunk=chunks/645 trending.pig
wc -l trending.model.645
touch model.646
time pig -x local -param model_in=model.646 -param model_out=model.647 -param next_chunk=chunks/646 trending.pig
wc -l trending.model.646
touch model.647
time pig -x local -param model_in=model.647 -param model_out=model.648 -param next_chunk=chunks/647 trending.pig
wc -l trending.model.647
touch model.648
time pig -x local -param model_in=model.648 -param model_out=model.649 -param next_chunk=chunks/648 trending.pig
wc -l trending.model.648
touch model.649
time pig -x local -param model_in=model.649 -param model_out=model.650 -param next_chunk=chunks/649 trending.pig
wc -l trending.model.649
touch model.650
time pig -x local -param model_in=model.650 -param model_out=model.651 -param next_chunk=chunks/650 trending.pig
wc -l trending.model.650
touch model.651
time pig -x local -param model_in=model.651 -param model_out=model.652 -param next_chunk=chunks/651 trending.pig
wc -l trending.model.651
touch model.652
time pig -x local -param model_in=model.652 -param model_out=model.653 -param next_chunk=chunks/652 trending.pig
wc -l trending.model.652
touch model.653
time pig -x local -param model_in=model.653 -param model_out=model.654 -param next_chunk=chunks/653 trending.pig
wc -l trending.model.653
touch model.654
time pig -x local -param model_in=model.654 -param model_out=model.655 -param next_chunk=chunks/654 trending.pig
wc -l trending.model.654
touch model.655
time pig -x local -param model_in=model.655 -param model_out=model.656 -param next_chunk=chunks/655 trending.pig
wc -l trending.model.655
touch model.656
time pig -x local -param model_in=model.656 -param model_out=model.657 -param next_chunk=chunks/656 trending.pig
wc -l trending.model.656
touch model.657
time pig -x local -param model_in=model.657 -param model_out=model.658 -param next_chunk=chunks/657 trending.pig
wc -l trending.model.657
touch model.658
time pig -x local -param model_in=model.658 -param model_out=model.659 -param next_chunk=chunks/658 trending.pig
wc -l trending.model.658
touch model.659
time pig -x local -param model_in=model.659 -param model_out=model.660 -param next_chunk=chunks/659 trending.pig
wc -l trending.model.659
touch model.660
time pig -x local -param model_in=model.660 -param model_out=model.661 -param next_chunk=chunks/660 trending.pig
wc -l trending.model.660
touch model.661
time pig -x local -param model_in=model.661 -param model_out=model.662 -param next_chunk=chunks/661 trending.pig
wc -l trending.model.661
touch model.662
time pig -x local -param model_in=model.662 -param model_out=model.663 -param next_chunk=chunks/662 trending.pig
wc -l trending.model.662
touch model.663
time pig -x local -param model_in=model.663 -param model_out=model.664 -param next_chunk=chunks/663 trending.pig
wc -l trending.model.663
touch model.664
time pig -x local -param model_in=model.664 -param model_out=model.665 -param next_chunk=chunks/664 trending.pig
wc -l trending.model.664
touch model.665
time pig -x local -param model_in=model.665 -param model_out=model.666 -param next_chunk=chunks/665 trending.pig
wc -l trending.model.665
touch model.666
time pig -x local -param model_in=model.666 -param model_out=model.667 -param next_chunk=chunks/666 trending.pig
wc -l trending.model.666
touch model.667
time pig -x local -param model_in=model.667 -param model_out=model.668 -param next_chunk=chunks/667 trending.pig
wc -l trending.model.667
touch model.668
time pig -x local -param model_in=model.668 -param model_out=model.669 -param next_chunk=chunks/668 trending.pig
wc -l trending.model.668
touch model.669
time pig -x local -param model_in=model.669 -param model_out=model.670 -param next_chunk=chunks/669 trending.pig
wc -l trending.model.669
touch model.670
time pig -x local -param model_in=model.670 -param model_out=model.671 -param next_chunk=chunks/670 trending.pig
wc -l trending.model.670
touch model.671
time pig -x local -param model_in=model.671 -param model_out=model.672 -param next_chunk=chunks/671 trending.pig
wc -l trending.model.671
touch model.672
time pig -x local -param model_in=model.672 -param model_out=model.673 -param next_chunk=chunks/672 trending.pig
wc -l trending.model.672
touch model.673
time pig -x local -param model_in=model.673 -param model_out=model.674 -param next_chunk=chunks/673 trending.pig
wc -l trending.model.673
touch model.674
time pig -x local -param model_in=model.674 -param model_out=model.675 -param next_chunk=chunks/674 trending.pig
wc -l trending.model.674
touch model.675
time pig -x local -param model_in=model.675 -param model_out=model.676 -param next_chunk=chunks/675 trending.pig
wc -l trending.model.675
touch model.676
time pig -x local -param model_in=model.676 -param model_out=model.677 -param next_chunk=chunks/676 trending.pig
wc -l trending.model.676
touch model.677
time pig -x local -param model_in=model.677 -param model_out=model.678 -param next_chunk=chunks/677 trending.pig
wc -l trending.model.677
touch model.678
time pig -x local -param model_in=model.678 -param model_out=model.679 -param next_chunk=chunks/678 trending.pig
wc -l trending.model.678
touch model.679
time pig -x local -param model_in=model.679 -param model_out=model.680 -param next_chunk=chunks/679 trending.pig
wc -l trending.model.679
touch model.680
time pig -x local -param model_in=model.680 -param model_out=model.681 -param next_chunk=chunks/680 trending.pig
wc -l trending.model.680
touch model.681
time pig -x local -param model_in=model.681 -param model_out=model.682 -param next_chunk=chunks/681 trending.pig
wc -l trending.model.681
touch model.682
time pig -x local -param model_in=model.682 -param model_out=model.683 -param next_chunk=chunks/682 trending.pig
wc -l trending.model.682
touch model.683
time pig -x local -param model_in=model.683 -param model_out=model.684 -param next_chunk=chunks/683 trending.pig
wc -l trending.model.683
touch model.684
time pig -x local -param model_in=model.684 -param model_out=model.685 -param next_chunk=chunks/684 trending.pig
wc -l trending.model.684
touch model.685
time pig -x local -param model_in=model.685 -param model_out=model.686 -param next_chunk=chunks/685 trending.pig
wc -l trending.model.685
touch model.686
time pig -x local -param model_in=model.686 -param model_out=model.687 -param next_chunk=chunks/686 trending.pig
wc -l trending.model.686
touch model.687
time pig -x local -param model_in=model.687 -param model_out=model.688 -param next_chunk=chunks/687 trending.pig
wc -l trending.model.687
touch model.688
time pig -x local -param model_in=model.688 -param model_out=model.689 -param next_chunk=chunks/688 trending.pig
wc -l trending.model.688
touch model.689
time pig -x local -param model_in=model.689 -param model_out=model.690 -param next_chunk=chunks/689 trending.pig
wc -l trending.model.689
touch model.690
time pig -x local -param model_in=model.690 -param model_out=model.691 -param next_chunk=chunks/690 trending.pig
wc -l trending.model.690
touch model.691
time pig -x local -param model_in=model.691 -param model_out=model.692 -param next_chunk=chunks/691 trending.pig
wc -l trending.model.691
touch model.692
time pig -x local -param model_in=model.692 -param model_out=model.693 -param next_chunk=chunks/692 trending.pig
wc -l trending.model.692
touch model.693
time pig -x local -param model_in=model.693 -param model_out=model.694 -param next_chunk=chunks/693 trending.pig
wc -l trending.model.693
touch model.694
time pig -x local -param model_in=model.694 -param model_out=model.695 -param next_chunk=chunks/694 trending.pig
wc -l trending.model.694
touch model.695
time pig -x local -param model_in=model.695 -param model_out=model.696 -param next_chunk=chunks/695 trending.pig
wc -l trending.model.695
touch model.696
time pig -x local -param model_in=model.696 -param model_out=model.697 -param next_chunk=chunks/696 trending.pig
wc -l trending.model.696
touch model.697
time pig -x local -param model_in=model.697 -param model_out=model.698 -param next_chunk=chunks/697 trending.pig
wc -l trending.model.697
touch model.698
time pig -x local -param model_in=model.698 -param model_out=model.699 -param next_chunk=chunks/698 trending.pig
wc -l trending.model.698
touch model.699
time pig -x local -param model_in=model.699 -param model_out=model.700 -param next_chunk=chunks/699 trending.pig
wc -l trending.model.699
touch model.700
time pig -x local -param model_in=model.700 -param model_out=model.701 -param next_chunk=chunks/700 trending.pig
wc -l trending.model.700
