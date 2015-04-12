source("load_customize_dataset.R")

plot1 <- function(dst = load_customize_dataset()) {
        ##Saving the histogram as a PNG file
        png(file="plot1.png", width=480, height=480)
        
        ##Building the Histogram
        hist(dst$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frecuency")
        
        ##Closing the graphic device
        dev.off()
        
}

plot1()


