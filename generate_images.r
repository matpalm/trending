width_ = 1200
height_ = 400

d = read.delim('tweets_per_hour_since_baseline.tsv', sep=' ', header=FALSE)
dd = d$V1
png("tweets_per_hour_since_baseline.png", width = width_, height = height_, bg = "transparent")
plot(dd, type='l', ylim=c(0,max(dd)))
dev.off()

png("tweets_per_hour_since_baseline.trending.png", width = width_, height = height_, bg = "transparent")
d = read.delim('tweets_per_hour_since_baseline.trending.tsv', header=FALSE)
freqs = d$V2
means = d$V3
min_trends = d$V4
range_ = c(0, max(append(freqs,min_trends)))
plot(freqs, type='l', ylim=range_)
points(means, type='l', col='green', ylim=range_)
points(min_trends, type='l', col='red', ylim=range_)
dev.off()

png("tweets_over_day.15.png", width = width_, height = height_, bg = "transparent")
d = read.delim('tweets_over_day.15.tsv', header=FALSE)
freqs = d$V2
means = d$V3
min_trends = d$V4
range_ = c(0, max(append(freqs,min_trends)))
plot(freqs, type='l', ylim=range_)
points(means, type='l', col='green', ylim=range_)
points(min_trends, type='l', col='red', ylim=range_)
dev.off()

png("tweets_over_week.1.png", width = width_, height = height_, bg = "transparent")
d = read.delim('tweets_over_week.1.tsv', header=FALSE)
freqs = d$V2
means = d$V3
min_trends = d$V4
range_ = c(0, max(append(freqs,min_trends)))
plot(freqs, type='l', ylim=range_)
points(means, type='l', col='green', ylim=range_)
points(min_trends, type='l', col='red', ylim=range_)
dev.off()

