png("site/tweets_per_hour_since_baseline.png", width = 1000, height = 400, bg = "transparent")
d = read.delim('tweets_per_hour_since_baseline.tsv', sep=' ', header=FALSE)
plot(d$V1, type='l')
dev.off()

#png("times.weekly.png", width = 500, height = 480, bg = "transparent")
#data = read.delim('times.weekly.tsv', sep=' ', header=FALSE)
#freqs = data[order(data$V2),]$V1
#freqs = append(c(0), freqs) # HACK
#plot(freqs)
#dev.off()

#png("term_freqs.png", width = 500, height = 480, bg = "transparent")
#data = read.delim('term_freqs.ssv', sep=' ', header=FALSE)
#freqs = sort(data$V1)
#plot(log10(freqs))
#dev.off()