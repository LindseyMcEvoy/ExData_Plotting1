mydata = read.table("C:/Users/C16Lindsey.McEvoy/Downloads/exdata-data-household_power_consumption (1)/household_power_consumption.txt", header=T, sep=";", na.strings="?", strip.white=T, quote="")

mydata = subset(mydata, (Date =="1/2/2007" | Date=="2/2/2007"))
#head(data)
attach(mydata)

mydata$Date = as.Date(mydata$Date, format="%d/%m/%Y")
datetime = as.POSIXct(paste(mydata$Date, mydata$Time))
par(mfrow=c(1,1))                            
plot(datetime, Global_active_power, xlab = "",ylab = "Global Active Power (kilowatts)", type = "l")

png("plot2.png", width = 480, height = 480)


