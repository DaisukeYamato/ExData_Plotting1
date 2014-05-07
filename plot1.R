# plot1.R

png(filename="plot1.png")

hist(use.data$Global_active_power,main="Global Active Power", col="red",
	xlab="Global Active Power (kilowatts)")

dev.off()
