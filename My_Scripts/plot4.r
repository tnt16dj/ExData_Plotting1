## setwd to My_Plots
setwd("./My_Plots")

## setup a png device to write to
png(filename="plot4.png",width=480,height=480,units="px",bg="transparent")

## setup the 2x2 grid that will hold the four plots
par(mfrow=c(2,2))

## make plot1
plot(powerData$Date+powerData$Time, 
     powerData$Global_active_power,
     xlab='',
     ylab='Global Active Power', 
     main='', 
     type='l')

## make plot2
plot(powerData$Date+powerData$Time, 
     powerData$Voltage,
     xlab='datetime',
     ylab='Voltage', 
     main='', 
     type='l')

## make plot3
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

## make plot4
plot(powerData$Date+powerData$Time, 
     powerData$Global_reactive_power,
     xlab='datetime',
     ylab='Global_reactive_power', 
     main='', 
     type='l')

## Turn off the png device
dev.off()

## setwd to ExData_Plotting1
setwd("../")