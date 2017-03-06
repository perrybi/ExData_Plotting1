loadFile <- function(){
  # This function is to load the text file and clean and prepare it for the analysis
  
  # load the text file
  dat <- read.table("../household_power_consumption.txt", sep =";", na.strings = "?", header = TRUE, 
                    colClasses = c("character","character","numeric","numeric","numeric","numeric",
                                   "numeric","numeric", "numeric"))
  # change the format of the date for simplicity
  dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
  
  # filter the date between the required range
  dat <- subset(dat,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
  
  # remove the incomplete parts
  dat <- dat[complete.cases(dat),]
  
  # to be able to analyze the days for plot 2:
  # combine Date and Time column
  Date_Time <- paste(dat$Date, dat$Time)
  
  # name the date_time column
  Date_Time <- setNames(Date_Time, "Date&Time")
  
  # remove Date an Time columns from the data frame
  dat <- dat[ ,!(names(dat) %in% c("Date","Time"))]
  
  # add the date_time column in place of the removed columns
  dat <- cbind(Date_Time, dat)
  
  # format the date_time column to a proper format 
  dat$Date_Time <- as.POSIXct(Date_Time)
  dat
  
}