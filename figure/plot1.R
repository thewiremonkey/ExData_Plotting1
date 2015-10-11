#check to see if the data has already been downloaded. If not, call the source file getdata.R 
#which downloads the file and cleans up the data
if(!exists("filedata")){source("getdata.R")}
#copy filedata into variable "file" to preserve the tidy data in filedata for other functions
file<-filedata

#open the graphic device, create an empty png file
png(filename = "plot1.png", width = 480, height = 480)

#create a histogram of the Global active power column data
hist(file$Global_active_power,xlab="Global Active Power (kilowatts)", col="red",main = "Global Active Power")

#turn off the graphic device
dev.off()
