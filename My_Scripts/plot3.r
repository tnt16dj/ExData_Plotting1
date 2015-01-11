## setwd to My_Plots
setwd("./My_Plots")

## setup a png device to write to
png(filename="plot2.png",width=480,height=480,units="px",bg="transparent")

## make the plot
with(powerData,plot(powerData$Date+powerData$Time,
                    Sub_metering_1,
                    ylab='Energy sub metering',
                    main='',
                    xlab='',
                    type='l'))
lines(powerData$Date+powerData$Time,
      powerData$Sub_metering_2,
      col='red')
lines(powerData$Date+powerData$Time,
      powerData$Sub_metering_3,
      col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

## Turn off the png device
dev.off()

## setwd to ExData_Plotting1
setwd("../")