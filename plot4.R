data<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
newdata<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
write.csv(newdata,"newdata2.csv")
newdata2<-read.csv("newdata2.csv")

png(file="plot4.png",width = 480, height = 480)

par(mfrow=c(2,2))

#plot1
plot(newdata2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xaxt="n",xlab=" ")

#plot2
plot(newdata2$Voltage,type="l",xaxt="n",xlab="datetime",ylab="Voltage")

#plot3
plot(newdata2$Sub_metering_1,type="l",col="black",ylim=c(0,40),xaxt="n",xlab="",ylab="Energy sub metering")
par(new=TRUE)
plot(newdata2$Sub_metering_2,type="l",col="red",ylim=c(0,40),xaxt="n",xlab="",ylab="Energy sub metering")
par(new=TRUE)
plot(newdata2$Sub_metering_3,type="l",col="blue",ylim=c(0,40),xaxt="n",xlab="",ylab="Energy sub metering")
legend("topright", lty=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#plot4
plot(newdata2$Global_reactive_power,type="l",xaxt="n",xlab="datetime",ylab="Global_reactive_power")

dev.off()
