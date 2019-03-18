#Read in data and change column names
setwd("~/Desktop/ExData_Plotting1")
power <- read.csv("household_power_consumption.txt", header=FALSE, sep=";", 
                  na.strings="")
cnames <- readLines("household_power_consumption.txt", 1)
cnames <- strsplit(cnames, ";", fixed= TRUE)
names(power) <- make.names(cnames[[1]])

#Plot 2
times <- as.POSIXct(paste(both$Date, both$Time), format="%d/%m/%Y %H:%M:%S")
##Save as .png file
png(file="plot2.png", width=480, height=480, units="px")
plot(times, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()