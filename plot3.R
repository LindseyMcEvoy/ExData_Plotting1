mydata = read.table("C:/Users/C16Lindsey.McEvoy/Downloads/exdata-data-household_power_consumption (1)/household_power_consumption.txt", header=T, sep=";", na.strings="?", strip.white=T, quote="")

mydata = subset(mydata, (Date =="1/2/2007" | Date=="2/2/2007"))
#head(data)
attach(mydata)

mydata$Date = as.Date(mydata$Date, format="%d/%m/%Y")
datetime = as.POSIXct(paste(mydata$Date, mydata$Time))

plot(datetime, Sub_metering_1, xlab = "",ylab = "Energy Sub Metering", type = "l")
lines(datetime, Sub_metering_2, col = "red", type = "l")
lines(datetime, Sub_metering_3, col = "blue", type = "l")
legend("topright", col=c("black", "red", "blue"), legend=c("sub metering 1", "sub metering 2", "sub metering 3"))

png("plot3.png", width = 480, height = 480)
