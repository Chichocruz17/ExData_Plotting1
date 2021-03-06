datahpc <- "household_power_consumption.txt"
datalist <- read.table(datahpc, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataextract <- datalist[datalist$Date %in% c("1/2/2007","2/2/2007") ,]

time <- strptime(paste(dataextract$Date, dataextract$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataextract$Global_active_power)
subMeter1 <- as.numeric(dataextract$Sub_metering_1)
subMeter2 <- as.numeric(dataextract$Sub_metering_2)
subMeter3 <- as.numeric(dataextract$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(time, subMeter1, type="l", ylab="Energy Submetering", xlab="")
lines(time, subMeter2, type="l", col="red")
lines(time, subMeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()