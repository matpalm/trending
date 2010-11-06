png("graph.png", width=800, height=640, bg = "transparent")
observations = read.delim('observations', header=FALSE)
predicted_values = read.delim('predicted', header=FALSE)
plot(observations$V1, type='p', col='red')
points(predicted_values$V1, type='p', col='blue')
abline(h=10, col='green')
dev.off()