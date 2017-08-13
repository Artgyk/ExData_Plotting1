source('load_data.R')

data<-load_data()

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot(data$Date + data$Time, d$Global_active_power, ylab = 'Global Active Power (kilowatts)', xlab='', type='l')

plot(data$Date + data$Time, d$Voltage, ylab = 'Voltage', xlab='datetime', type='l')

plot(data$Date + data$Time, data$Sub_metering_1, ylab = 'Energy sub metering',xlab='', type='l')
lines(data$Date + data$Time, data$Sub_metering_2, col='red')
lines(data$Date + data$Time, data$Sub_metering_3, col='blue')
legend('topright', legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=c(1,1,1), bty = "n")

plot(data$Date + data$Time, d$Global_reactive_power, ylab = 'Global_reactive_power', xlab='datetime', type='l')

dev.off()