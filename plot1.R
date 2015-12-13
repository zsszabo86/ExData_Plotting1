par(mar=c(4,6,2,2))
hist(as.numeric(as.character(data[,3])), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, "plot1.png")
dev.off()