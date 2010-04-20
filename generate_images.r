png("times.daily.png", width = 500, height = 480, bg = "transparent")
data = read.delim('times.daily.tsv', sep=' ', header=FALSE)
freqs = data[order(data$V2),]$V1
freqs = append(c(0), freqs) # HACK
plot(freqs)
dev.off()

png("times.weekly.png", width = 500, height = 480, bg = "transparent")
data = read.delim('times.weekly.tsv', sep=' ', header=FALSE)
freqs = data[order(data$V2),]$V1
freqs = append(c(0), freqs) # HACK
plot(freqs)
dev.off()

png("term_freqs.png", width = 500, height = 480, bg = "transparent")
data = read.delim('term_freqs.ssv', sep=' ', header=FALSE)
freqs = sort(data$V1)
plot(log10(freqs))
dev.off()