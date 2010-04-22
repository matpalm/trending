width_ = 1200
height_ = 200

png("tweets_over_day.60.nonaggregated.png", width = width_, height = height_, bg = "transparent")
d = read.delim('tweets_over_day.60.nonaggregated', header=FALSE)
dd = d$V1
plot(dd, type='l', ylim=c(0,max(dd)))
dev.off()

exit 0

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

## uber graph!

d_periodic = read.delim('tweets.periodic_trending.15m.tsv', header=FALSE)
freqs = d_periodic$V2
pmeans = d_periodic$V3
pmin_trends = d_periodic$V4

d_normal = read.delim('tweets_per_hour_since_baseline.trending.tsv', header=FALSE)
means = d_normal$V3
min_trends = d_normal$V4

range_ = c(0, max(append(freqs,pmin_trends,min_trends)))
png("tweets.periodic_trending.15m.big.png", width = 6000, height = 800, bg = "transparent")
plot(freqs, type='l', ylim=range_)
points(means, type='l', col='green', ylim=range_)
points(min_trends, type='l', col='red', ylim=range_)
points(pmeans, type='l', col='green', ylim=range_)
points(pmin_trends, type='l', col='red', ylim=range_)
dev.off()


