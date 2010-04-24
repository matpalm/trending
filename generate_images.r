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
