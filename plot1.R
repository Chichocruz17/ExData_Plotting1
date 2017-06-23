

setwd("~/datascience/Lesson 4 Peer Graded Assignment/exdata_data_household_power_consumption")
data <- "household_power_consumption.txt" 
dataread <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataextract <- dataread[dataread$Date %in% c("1/2/2007","2/2/2007"), ]
Active_Global_Power <- as.numeric(dataextract$Global_active_power) 
png("plot1.png", width=480, height=480)
hist(Active_Global_Power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
