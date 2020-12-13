#setwd("C:/Users/Hsin-Rui Lin/Documents/Github")
ds <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
ds <- subset(ds, Date=="1/2/2007"| Date=="2/2/2007")

png("ExData_Plotting1/plot1.png")
hist(ds$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()
