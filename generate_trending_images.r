width_ = 1200
height_ = 200
image_filename = paste(Sys.getenv('file'),".png", sep="")
tsv_filename   = paste(Sys.getenv('file'),".tsv", sep="")
png(image_filename, width = width_, height = height_, bg = "transparent")
d = read.delim(tsv_filename, header=FALSE)
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
