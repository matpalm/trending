
png("tweets_over_day.60.trending.zoom.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.trending.tsv", header=FALSE)
d = tail(d,200)
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

png("tweets_over_day.60.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.periodic_trending.zoom.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.periodic_trending.tsv", header=FALSE)
d = tail(d,200)
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

png("tweets_over_day.60.periodic_trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.periodic_trending.tsv", header=FALSE)
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

png("tweets_over_day.60.periodic_trending.sliding.zoom.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.periodic_trending.sliding.tsv", header=FALSE)
d = tail(d,200)
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

png("tweets_over_day.60.periodic_trending.sliding.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.periodic_trending.sliding.tsv", header=FALSE)
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

png("tweets_over_day.60.nonaggregated.png", width=1200, height=300, bg = "transparent")
d = read.delim('tweets_over_day.60.nonaggregated', header=FALSE)
dd = d$V1
plot(dd, type='l', ylim=c(0,max(dd)))
dev.off()
