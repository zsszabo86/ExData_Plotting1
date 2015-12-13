par(mar=c(4,6,2,2))
plot(data[,10], data[,3], "l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, "plot2.png")
dev.off()
