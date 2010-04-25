
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

png("tweets_over_day.60.grilledcheese.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.grilledcheese.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.grilledcheese.withzerofill.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.grilledcheese.withzerofill.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.creamcheese.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.creamcheese.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.creamcheese.withzerofill.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.creamcheese.withzerofill.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.goatscheese.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.goatscheese.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.goatscheese.withzerofill.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.goatscheese.withzerofill.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.applejuice.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.applejuice.trending.tsv", header=FALSE)
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

png("tweets_over_day.60.applejuice.withzerofill.trending.png", width = 1200, height = 300, bg = "transparent")
d = read.delim("tweets_over_day.60.applejuice.withzerofill.trending.tsv", header=FALSE)
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
png("tweets_over_day.60.hi_low_trending.png", width=1200, height=300, bg = "transparent")

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
