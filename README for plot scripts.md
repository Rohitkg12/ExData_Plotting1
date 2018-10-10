#Steps to be performed

1. Fetch the data and store in system
2. Extract the data from local system to R 
3. Filter the data for given two days
3. Create four R code files plot1.R, plot2.R, plot3.R and plot4.R
4. Each will have a logic to create a PNG file as out put with dimensions 480px X 480px
5. Individual Plot Details


##plot1.png
	Plot type: hist
 	Name:  Global Active Power
	x-axis: Global Active power(kilowatts)
	y-axis: Frequency 
	Legends: NA

##plot2.png
	Plot type: line plot
 	Name:  NA
	x-axis: NA(Default: Datetime
	y-axis: Global Active power(kilowatts)
	Legends: NA

##plot3.png
	Plot type:  line plot
 	Name:  NA
	x-axis: NA(Default: Datetime)
	y-axis: Global Active power(kilowatts)
	Legends: Sub_metering_1, Sub_metering_2 and  Sub_metering_3 (topright - black, red and blue)


##plot4.png
	Plot type: multi-plots (line graphs)
 	Name:  NA,NA,NA,NA
	x-axis: Datetime, Datetime,Datetime,Datetime
	y-axis: Global Active power, Voltage, Energy sub metering, Global_reactive_power
	Legends: NA,NA, [[Sub_metering_1, Sub_metering_2 and  Sub_metering_3 (topright - black, red and blue)]], NA
