#!/usr/bin/env ruby
#['grilledcheese','creamcheese','goatscheese','applejuice'].each do |term|
['ab','cd','ef'].each do |term|
puts <<EOF
  data = read.delim('tweets_over_day.60.#{term}.trending.tsv', header=FALSE)
  freq= data$V2
  min_trending = data$V4
  over_trend = freq / min_trending
  normalised_trend = log10(freq) * over_trend
  data2 = cbind(data, over_trend, normalised_trend)
  data2[data2$over_trend>1,]
EOF
end
