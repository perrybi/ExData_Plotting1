plot1 <- function(){
  # load the cleaned file
  source("loadFile.R")
  dat <- loadFile()
  
  # draw plot 1, the histogram:
  with(dat, hist(Global_active_power, col = "red", 
                 main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
  
  # Save graph as a png file
  dev.copy(png,"plot1.png", width=480, height=480)
  
  #close the graphics device
  dev.off()
}