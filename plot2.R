source('load_data.R')

data<-load_data()
png("plot2.png", width=480, height=480)
plot(data$Date + data$Time, d$Global_active_power, ylab = 'Global Active Power (kilowatts)', xlab='', type='l')

dev.off()