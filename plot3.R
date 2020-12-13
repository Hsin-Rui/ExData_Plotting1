#setwd("C:/Users/Hsin-Rui Lin/Documents/Github")
ds <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
ds <- subset(ds, Date=="1/2/2007"| Date=="2/2/2007")

datetime <- strptime(paste(ds$Date, ds$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("ExData_Plotting1/plot3.png")
plot(datetime, ds$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
points(datetime, ds$Sub_metering_2, type="l", col="red")
points(datetime, ds$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
