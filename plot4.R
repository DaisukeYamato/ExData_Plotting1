# plot4.R
png(filename="plot4.png")

par(mfrow=c(2,2))
## top left
with(use.data,plot(x=Datetime,y=Global_active_power, type="l",ylab="Global Active Power", xlab="",xaxt="n"))
#axis(1, labels="Fri", at=0)
r <- as.POSIXct(round(range(use.data$Datetime), "days"))
rmid <- as.POSIXct(round(range(use.data$Datetime[1:1440]), "days"))
#axis.POSIXct(1, at=seq(r[1],r[2], by="1 week"), format="%a")

axis(1,labels="Thu",at=r[1])
axis(1,labels="Sat",at=r[2])
axis(1,labels="Fri",at=rmid[2])

## top right
with(use.data,plot(x=Datetime,y=Voltage, type="l",ylab="Voltage",
	 xlab="datetime",xaxt="n"))
#axis(1, labels="Fri", at=0)
r <- as.POSIXct(round(range(use.data$Datetime), "days"))
rmid <- as.POSIXct(round(range(use.data$Datetime[1:1440]), "days"))
#axis.POSIXct(1, at=seq(r[1],r[2], by="1 week"), format="%a")

axis(1,labels="Thu",at=r[1])
axis(1,labels="Sat",at=r[2])
axis(1,labels="Fri",at=rmid[2])



## bottom left

ymax=max(use.data$Sub_metering_1)
with(use.data,plot(x=Datetime,y=Sub_metering_1, type="l",
	ylab="Energy sub metering", xlab="",xaxt="n",
	ylim=c(0,ymax) ) )
	
#axis(1, labels="Fri", at=0)
r <- as.POSIXct(round(range(use.data$Datetime), "days"))
rmid <- as.POSIXct(round(range(use.data$Datetime[1:1440]), "days"))
#axis.POSIXct(1, at=seq(r[1],r[2], by="1 week"), format="%a")

axis(1,labels="Thu",at=r[1])
axis(1,labels="Sat",at=r[2])
axis(1,labels="Fri",at=rmid[2])

par(new=T)
with(use.data,plot(x=Datetime,y=Sub_metering_2, type="l",
	ylab="", xlab="",xaxt="n",
	ylim=c(0,ymax),col="red"))
par(new=T)
with(use.data,plot(x=Datetime,y=Sub_metering_3, type="l",
	ylab="", xlab="",xaxt="n",
	ylim=c(0,ymax),col="blue"))

legend("topright",lty=1,col=c("black","red","blue"),
	legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),box.lwd=0)


## bottom right
with(use.data,plot(x=Datetime,y=Global_reactive_power,
 type="l",ylab="Global_reactive_power",
	 xlab="datetime",xaxt="n"))
#axis(1, labels="Fri", at=0)
r <- as.POSIXct(round(range(use.data$Datetime), "days"))
rmid <- as.POSIXct(round(range(use.data$Datetime[1:1440]), "days"))
#axis.POSIXct(1, at=seq(r[1],r[2], by="1 week"), format="%a")

axis(1,labels="Thu",at=r[1])
axis(1,labels="Sat",at=r[2])
axis(1,labels="Fri",at=rmid[2])

dev.off()



# endline
