getwd()
setwd("D:/R ex/Coursera files/")
data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
str(data)
data_with_dates <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
final_graph1 <- hist(data_with_dates[,3],col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power",mar=c(0.8,0.2,0.2,0.1))
dev.copy(png,file="plot1.png")
dev.off
