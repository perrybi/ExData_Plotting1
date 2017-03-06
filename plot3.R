plot3 <- function(){
  # load the cleaned file
  source("loadFile.R")
  dat <- loadFile()
  
  # draw plot 3, changes of energy sub mitering over days of the week
  # type = "l" indicates we want line to connect points
  
  with(dat, {
    # black is default funciton
    plot(Date_Time, Sub_metering_1, type = "l", xlab="", 
         ylab="Energy sub metering")
    # line is used to annotate the plot (add more)
    lines(Date_Time, Sub_metering_2, col='red')
    lines(Date_Time, Sub_metering_3, col='blue')
  })
  
  # lwd is used to put a line segment in legend
  legend("topright", col = c("black", "red", "blue"), lwd = c(1,1,1),
         c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

  # Save graph as a png file
  dev.copy(png,"plot3.png", width=480, height=480)
  
  #close the graphics device
  dev.off()
  
}