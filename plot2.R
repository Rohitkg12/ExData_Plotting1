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
png("./data/plot2.png", width=480, height=480)
with(filteredDataset, plot(fullDateTime, Global_active_power, xlab="", ylab = "Global Active Power (kilowatts)", type = "l"))
dev.off()
