#!/usr/bin/env ruby

@width = 1200
@height = 300

def trending_graph file, with_zoom
  image_filename = "#{file}#{(with_zoom ? ".zoom" : "")}.png"
  puts <<EOF

png("#{image_filename}", width = #{@width}, height = #{@height}, bg = "transparent")
d = read.delim("#{file}.tsv", header=FALSE)
EOF

  puts "d = tail(d,200)" if with_zoom
  
  puts <<EOF
freqs = d$V2
means = d$V3
min_trends = d$V4
range_ = c(0, max(append(freqs,min_trends)))
freq_over_trend = freqs > min_trends
index_of_freqs_over_trend = (1:length(freq_over_trend))[freq_over_trend]
plot(freqs, type='l', ylim=range_)
abline(v=index_of_freqs_over_trend, col='blue')
points(freqs, type='l', ylim=range_)
points(means, type='l', col='green', ylim=range_)
points(min_trends, type='l', col='red', ylim=range_)
dev.off()
EOF
end

def trending_graph_with_zoom_in_for file
  trending_graph file, true
  trending_graph file, false
end

def other_graphs
puts <<EOF

png("tweets_over_day.60.nonaggregated.png", width=#{@width}, height=#{@height}, bg = "transparent")
d = read.delim('tweets_over_day.60.nonaggregated', header=FALSE)
dd = d$V1
plot(dd, type='l', ylim=c(0,max(dd)))
dev.off()
EOF
end

trending_graph_with_zoom_in_for 'tweets_over_day.60.trending'
trending_graph_with_zoom_in_for 'tweets_over_day.60.periodic_trending'
trending_graph_with_zoom_in_for 'tweets_over_day.60.periodic_trending.sliding'
other_graphs


