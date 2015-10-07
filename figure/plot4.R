if(!exists("filedata")){source("getdata.R")}

file<-filedata

png(filename = "plot4.png")

#frame for four plots in order: top left, top right, bottom left, bottom right
par(mfrow=c(2,2))

#plot one, upper left corner
plot(file$timestamp, file$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")

#plot two, upper right corner
plot(file$timestamp, file$Voltage, type = "l", xlab = "datetime", ylab="Voltage") 



#third plot lower left corner
plot(file$timestamp, file$Sub_metering_1, type = "l", xlab = "", ylab="Energy Sub Metering")
lines(file$timestamp, file$Sub_metering_2, type = "l", col="red")
lines(file$timestamp, file$Sub_metering_3, type = "l", col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", lty = c(1,1), lwd=c(1,1))


#forth plot lower right corner

plot(file$timestamp, file$Global_reactive_power, type = "l", xlab = "datetime", ylab="Global Reactive Power ") 
dev.off()