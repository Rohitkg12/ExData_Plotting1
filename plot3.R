#Path of text file
DataSourceFilename = "./data/household_power_consumption.txt"

#Fetch the table with seperator as ";" and '?' as 'NA
rawData <- read.table(file=DataSourceFilename,header=TRUE, sep = ";",na.strings="?")

#check the fetched Content
View(rawData)

#Set start and end date
startDate <- as.Date("01/02/2007", format="%d/%m/%Y")
endDate <- as.Date("02/02/2007", format="%d/%m/%Y")

#filter the dataset based on start and end date 
filteredDataset <- rawData[(as.Date(rawData$Date, format="%d/%m/%Y") == startDate | as.Date(rawData$Date, format="%d/%m/%Y") == endDate),]

#Add new column as combination of Date and Time
filteredDataset$fullDateTime <- strptime(paste(filteredDataset$Date, filteredDataset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#check the filtered dataset
View(filteredDataset)

#Build Plot
png("./data/plot3.png", width=480, height=480)

with(filteredDataset, plot(fullDateTime, Global_active_power, xlab="", ylab = "Global Active Power (kilowatts)", type = "l"))

with(filteredDataset, plot(fullDateTime,Sub_metering_1, type = "n", main = "", xlab = "", ylab="Energy sub metering"))

with(filteredDataset, points(fullDateTime,Sub_metering_1, type = "l", col = "black"))
with(filteredDataset, points(fullDateTime,Sub_metering_2, type = "l", col = "red"))
with(filteredDataset, points(fullDateTime,Sub_metering_3, type = "l", col = "blue"))

legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()

