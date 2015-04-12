source("load_customize_dataset.R")

plot3 <- function(dst = load_customize_dataset()) {
        ##Saving the histogram as a PNG file
        png(file="plot3.png", width=480, height=480)
        
        ##Building the Plot3
        with(dst, plot(Time, Sub_metering_1, ylab = "Energy sub metering", xlab = "", col = "black", type = "l"))
        with(dst, lines(Time, Sub_metering_2, col = "red"))
        with(dst, lines(Time, Sub_metering_3, col = "blue"))
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
        
        ##Closing the graphic device
        dev.off()
        
}

plot3()