par(mfrow=c(2,2))
par(mar=c(4,6,2,2))

#1
plot(data[,10], data[,3], "l", ylab="Global Active Power 
     (kilowatts)", xlab="")
#2
plot(data[,10], data[,5], "l", ylab="Voltage", xlab="datetime")
#3
plot(data[,10], data[,7], "l", ylab="Energy sub metering", xlab="")
lines(data[,10], data[,8], "l", col="red")
lines(data[,10], data[,9], "l", col="blue")
legend("topright", col=c("black", "red", "blue"), lty=1, legend=c("sub metering 1","sub metering 2","sub metering 3"), 
       bg=NULL, cex=0.64)
#4
plot(data[,10], data[,4], "l", ylab="Global Reactive Power", xlab="datetime")

dev.copy(png, "plot4.png")
dev.off()
