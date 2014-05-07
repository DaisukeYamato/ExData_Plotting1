# plot2.R
#plot(y=use.data$Global_active_power, x=use.data$Datetime)
#ts.plot(use.data$Global_active_power,x=use.data$Datetime)

## The day of week is difficult due to environment dependent (Japanese).
## Therefore, the procedure is quite complicated.
png(filename="plot2.png")

with(use.data,plot(x=Datetime,y=Global_active_power, type="l",ylab="Global Active Power (kilowatts)", xlab="",xaxt="n"))
#axis(1, labels="Fri", at=0)
r <- as.POSIXct(round(range(use.data$Datetime), "days"))
rmid <- as.POSIXct(round(range(use.data$Datetime[1:1440]), "days"))
#axis.POSIXct(1, at=seq(r[1],r[2], by="1 week"), format="%a")

axis(1,labels="Thu",at=r[1])
axis(1,labels="Sat",at=r[2])
axis(1,labels="Fri",at=rmid[2])

dev.off()

## endline