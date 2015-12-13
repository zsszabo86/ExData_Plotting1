par(mar=c(4,8,4,4))
plot(data[,10], data[,7], "l", ylab="Energy sub metering", xlab="")
lines(data[,10], data[,8], "l", col="red")
lines(data[,10], data[,9], "l", col="blue")
legend("topright", col=c("black", "red", "blue"), lty=1, legend=c("sub metering 1","sub metering 2","sub metering 3"), 
       bg=NULL, cex=1)
dev.copy(png, "plot3.png", width=480, height=480, pointsize=8)
dev.off()
