#Reads in the data
mydata = read.csv("C:/Users/C16Lindsey.McEvoy/Downloads/exdata-data-household_power_consumption (1)/household_power_consumption.txt", header=T, sep=";", na.strings="?")

#subsets only the data being used
data = subset(mydata, (Date =="1/2/2007" | Date=="2/2/2007"))
head(data)

#creates a histogram of the global active power for the two days
hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red")

#saves the plot as a png file
png("plot1.png", width = 480, height = 480)
