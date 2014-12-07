getwd()
setwd("D:/R ex/Coursera files/")
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
str(data)
data_with_dates <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
install.packages("lubridate")
library(lubridate)
datatime <- paste(data_with_dates$Date, data_with_dates$Time)
datatime_formatted <- parse_date_time(datatime,"dmy HMS")
final_graph2 <- plot(x=datatime_formatted,y=data_with_dates[,3],type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.copy(png,file="plot2.png")
dev.off
