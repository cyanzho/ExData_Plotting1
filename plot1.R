#Read in data and change column names
setwd("~/Desktop/ExData_Plotting1")
power <- read.csv("household_power_consumption.txt", header=FALSE, sep=";", 
                  na.strings="")
cnames <- readLines("household_power_consumption.txt", 1)
cnames <- strsplit(cnames, ";", fixed= TRUE)
names(power) <- make.names(cnames[[1]])

#Plot 1
both <- power[power$Date=="2/2/2007" | power$Date=="1/2/2007",]
gap <- as.numeric(as.character(both$Global_active_power))
##Save as .png file
png(file="plot1.png", width=480, height=480, units="px")
hist(gap, col="red", xlab = "Global Active Power (kilowatts)", 
     main="Global Active Power", breaks=12)
dev.off()