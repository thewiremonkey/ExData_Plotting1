if(!file.exists("Data/raw.zip")){

fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
raw<-download.file(fileURL, "Data/raw.zip")
}

rawdata<<-unzip("Data/raw.zip" )

filedata<-read.table(rawdata,header = T, na.strings = "?", sep = ";", stringsAsFactors = FALSE)
filedata<-filedata[filedata$Date == "1/2/2007"| filedata$Date =="2/2/2007", ]
filedata<-filedata[!is.na(c(1:10)), ]

filedata$timestamp<-strptime(paste(filedata$Date, filedata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

filedata<<-data.frame(filedata,stringsAsFactors = F)


