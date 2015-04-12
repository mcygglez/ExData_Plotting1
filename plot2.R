source("load_customize_dataset.R")

plot2 <- function(dst = load_customize_dataset()) {
        ##Saving the histogram as a PNG file
        png(file="plot2.png", width=480, height=480)
        
        ##Building the Plot2
        with(dst, plot(Time, Global_active_power, ylab = "Global Active Power (kilowatts)", xlab="", type="l"))
        
        ##Closing the graphic device
        dev.off()
        
}

plot2()

