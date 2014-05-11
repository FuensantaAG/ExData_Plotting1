data<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
newdata<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
write.csv(newdata,"newdata2.csv")
newdata2<-read.csv("newdata2.csv")
png(file="plot2.png",width = 480, height = 480)
plot(newdata2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xaxt="n",xlab=" ")
dev.off()
