if(!exists("filedata")){source("getdata.R")}
file<-filedata[,c(3:10)]

png(filename = "plot3.png", width = 480, height = 480)

plot(file$timestamp, file$Sub_metering_1, type = "l", xlab = "", ylab="Energy Sub Metering" )
lines(file$timestamp, file$Sub_metering_2, type = "l", col="red")
lines(file$timestamp, file$Sub_metering_3, type = "l", col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), lwd=c(1,1))

dev.off()
