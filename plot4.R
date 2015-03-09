mydata = read.table("C:/Users/C16Lindsey.McEvoy/Downloads/exdata-data-household_power_consumption (1)/household_power_consumption.txt", header=T, sep=";", na.strings="?", strip.white=T, quote="")

mydata = subset(mydata, (Date =="1/2/2007" | Date=="2/2/2007"))
#head(data)
attach(mydata)

mydata$Date = as.Date(mydata$Date, format="%d/%m/%Y")
datetime = as.POSIXct(paste(mydata$Date, mydata$Time))

par(mfrow=c(2,2))

#Plot 1
plot(datetime, Global_active_power, xlab = "",ylab = "Global Active Power (kilowatts)", type = "l")

#Plot 2
plot(datetime, Voltage, xlab = "",ylab = "Voltage", type = "l")

#Plot 3
plot(datetime, Sub_metering_1, xlab = "",ylab = "Energy Sub Metering", type = "l")
lines(datetime, Sub_metering_2, col = "red", type = "l")
lines(datetime, Sub_metering_3, col = "blue", type = "l")


#Plot 4
plot(datetime, Global_reactive_power, xlab = "",ylab = "Global Reactive Power (kilowatts)", type = "l")


png("plot4.png", width = 480, height = 480)
