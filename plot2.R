plot2 <- function(){
  # load the cleaned file
  source("loadFile.R")
  dat <- loadFile()
  
  # draw plot 2, changes of Global Active Power over days of the week
  # type = "l" indicates we want line to connect points
  with(dat, plot(Date_Time, Global_active_power, type = "l", xlab="", 
       ylab="Global Active Power (kilowatts)"))
  
  # Save graph as a png file
  dev.copy(png,"plot2.png", width=480, height=480)
  
  #close the graphics device
  dev.off()
  
}