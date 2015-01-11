## setwd to My_Plots
setwd("./My_Plots")

## setup a png device to write to
png(filename="plot2.png",width=480,height=480,units="px",bg="transparent")

## make the plot
plot(powerData$Date+powerData$Time, 
     powerData$Global_active_power,
     xlab='',
     ylab='Global Active Power (kilowatts)', 
     main=''', 
     type='l')

## Turn off the png device
dev.off()

## setwd to ExData_Plotting1
setwd("../")