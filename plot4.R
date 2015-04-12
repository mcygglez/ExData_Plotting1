source("load_customize_dataset.R")

plot4 <- function(dst = load_customize_dataset()) {
        ##Saving the histogram as a PNG file
        png(file="plot4.png", width=480, height=480)
        
        ##setting the canvas
        par(mfrow = c(2,2), mar = c(4,4,2,2))
        
        ##Building Plot row1, col1
        with(dst, plot(Time, Global_active_power, ylab = "Global Active Power", xlab="", type = "l"))
        
        ##Building Plot row1, col2
        with(dst, plot(Time, Voltage, ylab = "Voltage", xlab = "datetime", type = "l"))
        
        ##Building Plot row2, col1
        with(dst, plot(Time, Sub_metering_1, ylab = "Energy sub metering", xlab = "", col = "black", type = "l"))
        with(dst, lines(Time, Sub_metering_2, col = "red"))
        with(dst, lines(Time, Sub_metering_3, col = "blue"))
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
        
        ##Building Plot row2, col2
        with(dst, plot(Time, Global_reactive_power, xlab = "datetime", type = "l"))
        
        ##Closing the graphic device
        dev.off()
        
}

plot4()