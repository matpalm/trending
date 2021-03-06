#!/usr/bin/env ruby

@width = 750
@height = 250
@output_path = 'site'

def trending_graph file, title, with_zoom
  image_filename = "#{file}#{(with_zoom ? ".zoom" : "")}.png"
  puts <<EOF

png("#{@output_path}/#{image_filename}", width = #{@width}, height = #{@height}, bg = "transparent")
d = read.delim("#{file}.tsv", header=FALSE)
EOF

  puts "d = tail(d,200)" if with_zoom
  
  title = title + (with_zoom ? ' with zoom' : '')

  puts <<EOF
freqs = d$V2
means = d$V3
min_trends = d$V4
range_ = c(0, max(append(freqs,min_trends)))
freq_over_trend = freqs > min_trends
index_of_freqs_over_trend = (1:length(freq_over_trend))[freq_over_trend]
plot(freqs, type='l', lwd='2', ylim=range_, xlab='hours', ylab='freq', main='#{title}')
abline(v=index_of_freqs_over_trend, col='blue', lwd='3')
points(freqs, type='l', lwd='2', ylim=range_)
points(means, type='l', lwd='2', col='green', ylim=range_)
points(min_trends, type='l', lwd='2', col='red', ylim=range_)
dev.off()
EOF
end

def trending_graph_with_zoom_in_for file, title
  trending_graph file, title, true
  trending_graph file, title, false
end

def other_graphs
puts <<EOF
png("#{@output_path}/tweets_over_day.60.nonaggregated.png", width=#{@width}, height=#{@height}, bg = "transparent")
d = read.delim('tweets_over_day.60.nonaggregated', header=FALSE)
dd = d$V1
plot(dd, type='l', lwd='2', ylim=c(0,max(dd)), xlab='hours', ylab='freq', main='a month of tweets about cheese')
dev.off()
EOF
end

=begin
def hi_low_over_day
puts <<EOF
png("#{@output_path}/tweets_over_day.60.hi_low_trending.png", width=#{@width}, height=#{@height}, bg = "transparent")

lo_d = read.delim('tweets_over_day.60.lo.periodic_trending.tsv', header=FALSE)
lo_freqs = lo_d$V2
lo_means = lo_d$V3
lo_min_trends = lo_d$V4

hi_d = read.delim('tweets_over_day.60.hi.periodic_trending.tsv', header=FALSE)
hi_freqs = hi_d$V2
hi_means = hi_d$V3
hi_min_trends = hi_d$V4

range = c(0, max(max(lo_freqs, hi_freqs, lo_min_trends, hi_min_trends)))

plot(lo_freqs, type='l', ylim=range)
points(lo_means, type='l', col='green')
points(lo_min_trends, type='l', col='red')

points(hi_freqs, type='l')
points(hi_means, type='l', col='green')
points(hi_min_trends, type='l', col='red')

dev.off()
EOF

end
=end

trending_graph_with_zoom_in_for 'tweets_over_day.60.trending', 'trending over day'
trending_graph_with_zoom_in_for 'tweets_over_day.60.periodic_trending', 'trending faceted per hour'

['grilled cheese', 'cream cheese', 'goats cheese', 'apple juice'].each do |title|
  ngram = title.gsub ' ',''
  trending_graph "tweets_over_day.60.#{ngram}.trending", title, false
  trending_graph "tweets_over_day.60.#{ngram}.withzerofill.trending", "#{title} (with zeros)", false
end

other_graphs



