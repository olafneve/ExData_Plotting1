png(file= "plot4.png")

par(mfcol = c(2,2))
plot(final_data$datetime, final_data$Global_active_power, type="l", xlab="" ,ylab="Global Active Power (kilowatts)")

plot(final_data$datetime, final_data$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "")
points(final_data$datetime, final_data$Sub_metering_2, col="red", type="l")    
points(final_data$datetime, final_data$Sub_metering_3, col="blue", type="l")  
legend("topright", lty=1, col= c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(final_data$datetime, final_data$Voltage, ylab = "Voltage", xlab = "datetime", type="l")

plot(final_data$datetime, final_data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
