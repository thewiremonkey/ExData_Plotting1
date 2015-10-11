#check to see if the data has already been downloaded and tidied.

if(!exists("filedata")){source("getdata.R")}

#take only columns for Global active power (3) and timestamp (10) place in data frame "file"
file<-filedata[,c(3,10)]

#open graphic device
png(filename = "plot2.png", width = 480, height = 480)

#create a line chart displaying Global active power over time
plot(file$timestamp, file$Global_active_power, type = "l", xlab = "", ylab="Global Active Power (kilowatts)")

#close graphic device
dev.off()
