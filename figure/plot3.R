#check to see if the large data file has already been downloaded, tidied and saved as the global variable "filedata".  
#If not, run the getdata.R script

if(!exists("filedata")){
    source("getdata.R")
    }
    
#create the data frame "file" from columns 3 through 10 of the filedata data    
file<-filedata[,c(3:10)]

#open graphic device, create an empty png file
png(filename = "plot3.png", width = 480, height = 480)

#initialize plot with the first data variable, sub metering 1, assign x and y labels.
plot(file$timestamp, file$Sub_metering_1, type = "l", xlab = "", ylab="Energy Sub Metering" )

#add a second line with sub metering 2 data column, color the line red
lines(file$timestamp, file$Sub_metering_2, type = "l", col="red")

#add a third line with sub metering 3 data column, color the line blue
lines(file$timestamp, file$Sub_metering_3, type = "l", col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), lwd=c(1,1))

#turn off graphic device
dev.off()
