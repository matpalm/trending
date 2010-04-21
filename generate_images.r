width=1000
height=400

d = read.delim('tweets_per_hour_since_baseline.tsv', sep=' ', header=FALSE)
dd = d$V1
png("tweets_per_hour_since_baseline.png", width = width, height = height, bg = "transparent")
plot(dd, type='l', ylim=c(0,max(dd)))
dev.off()
png("tweets_per_hour_since_baseline.trend_limits.png", width = 1000, height = 400, bg = "transparent")
plot(dd, type='l', ylim=c(0,max(dd)))
m = mean(dd)
s = sd(dd)
abline(m, 0, col='green', lwd=5)
abline(m+(2*s), 0, col='red', lwd=5)
dev.off()

png("tweets_over_day.15.png", width = width, height = height, bg = "transparent")
d = read.delim('tweets_over_day.15.tsv', sep=' ', header=FALSE)
dd = d$V1
plot(dd, type='l', ylim=c(0,max(dd)))
dev.off()

png("tweets_over_week.1.png", width = width, height = height, bg = "transparent")
d = read.delim('tweets_over_week.1.tsv', sep=' ', header=FALSE)
dd = d$V1
plot(dd, type='l', ylim=c(0,max(dd)))
dev.off()

#png("term_freqs.png", width = 500, height = 480, bg = "transparent")
#data = read.delim('term_freqs.ssv', sep=' ', header=FALSE)
#freqs = sort(data$V1)
#plot(log10(freqs))
#dev.off()