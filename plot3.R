
png(file= "plot3.png")

plot(final_data$datetime, final_data$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "")
points(final_data$datetime, final_data$Sub_metering_2, col="red", type="l")    
points(final_data$datetime, final_data$Sub_metering_3, col="blue", type="l")  
legend("topright", lty=1, col= c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )

dev.off()


