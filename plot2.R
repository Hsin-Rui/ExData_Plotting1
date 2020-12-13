#setwd("C:/Users/Hsin-Rui Lin/Documents/Github")
ds <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
ds <- subset(ds, Date=="1/2/2007"| Date=="2/2/2007")

datetime <- strptime(paste(ds$Date, ds$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("ExData_Plotting1/plot2.png")
plot(datetime, ds$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="")
dev.off()
