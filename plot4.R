#Read in data and change column names
setwd("~/Desktop/ExData_Plotting1")
power <- read.csv("household_power_consumption.txt", header=FALSE, sep=";", 
                  na.strings="")
cnames <- readLines("household_power_consumption.txt", 1)
cnames <- strsplit(cnames, ";", fixed= TRUE)
names(power) <- make.names(cnames[[1]])

#Plot 4
##Save as .png file
png(file="plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2))
#topleft - 1
plot(times, as.numeric(as.character(both$Global_active_power)), type="l", xlab="", ylab="Global Active Power")
#topright - 2
plot(times, as.numeric(as.character(both$Voltage)), type="l", xlab="datetime",ylab="Voltage")
#bottomleft - 3
plot(times, as.numeric(as.character(both$Sub_metering_1)), type="l", col="black", xlab="", ylab="Energy sub metering")
lines(times, as.numeric(as.character(both$Sub_metering_2)), col="red")
lines(times, as.numeric(as.character(both$Sub_metering_3)), col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1)
#bottomright - 4
plot(times, as.numeric(as.character(both$Global_reactive_power)), type="l", xlab="datetime",ylab="Global_reactive_power")
dev.off()
