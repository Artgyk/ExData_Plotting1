source('load_data.R')

data<-load_data()
png("plot3.png", width=480, height=480)

plot(data$Date + data$Time, data$Sub_metering_1, ylab = 'Energy sub metering',xlab='', type='l')
lines(data$Date + data$Time, data$Sub_metering_2, col='red')
lines(data$Date + data$Time, data$Sub_metering_3, col='blue')
legend('topright', legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1,1))
dev.off()