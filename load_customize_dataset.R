load_customize_dataset <- function(){
        
        ##Loading the dataset into R
        ds <- read.table(file = "./household_power_consumption.txt", 
                         header = TRUE, 
                         sep = ";", 
                         colClasses = c(rep("character", 2), rep("numeric", 7)), 
                         na.strings="?")
        
        ##Subsetting target dates
        dst <- subset(ds, ds$Date == "1/2/2007" | ds$Date == "2/2/2007")
        rm(ds)
        
        ##Casting Date and Time columns to Date and POSIX.lt types respectively
        dst$Time <- strptime(paste(dst$Date, dst$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
        dst$Date <- as.Date(dst$Date, "%d/%m/%Y")
        return(dst)
}