

setwd("~/datascience/Lesson 4 Peer Graded Assignment/exdata_data_household_power_consumption")
data <- "household_power_consumption.txt" 
dataplot2 <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataplot2extract <- dataplot2[dataplot2$Date %in% c("1/2/2007", "2/2/2007"), ] 
time <- strptime(paste(dataplot2extract$Date, dataplot2extract$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Active_Power_Global <- as.numeric(dataplot2extract$Global_active_power) 
png("plot2.png", width=480, height=480) 
plot(time, Active_Power_Global, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 
