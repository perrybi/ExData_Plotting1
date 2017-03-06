plot4 <- function(){
  # load the cleaned file
  source("loadFile.R")
  dat <- loadFile()
  
  # draw plot 4, changes of energy sub mitering over days of the week
  # type = "l" indicates we want line to connect points
  
  par(mfcol = c(2,2))
  
  with(dat, {
    # black is default funciton
    plot(Date_Time, Global_active_power, type = "l", xlab="", 
                 ylab="Global Acive Power (kilowatts)")
    
    plot(Date_Time, Sub_metering_1, type = "l", xlab="", 
         ylab="Energy sub metering")
    # line is used to annotate the plot (add more)
    lines(Date_Time, Sub_metering_2, col='red')
    lines(Date_Time, Sub_metering_3, col='blue')
    
    plot(Date_Time, Voltage, type = "l", xlab="", 
          ylab="Voltage")
    
    plot(Date_Time, Global_reactive_power, type = "l", xlab="", 
         ylab="Global_reactive_power")    
    
  })
  
  # Save graph as a png file
  dev.copy(png,"plot4.png", width=480, height=480)
  
  #close the graphics device
  dev.off()
  
}