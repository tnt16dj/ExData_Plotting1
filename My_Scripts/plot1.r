## setwd to My_Plots
setwd("./My_Plots")

## setup a png device to write to
png(filename="plot1.png",width=480,height=480,units="px",bg="transparent")

## make the plot
hist(powerData$Global_active_power, 
     main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', 
     col='red')

## Turn off the png device
dev.off()

## setwd to ExData_Plotting1
setwd("../")