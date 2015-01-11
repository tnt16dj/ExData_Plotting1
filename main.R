## create file structure for program execution
## check if ExData_Plotting1 output directory exists:
if (!file.exists("./ExData_Plotting1")) {
        dir.create("./ExData_Plotting1")
}

## setwd to ExData_Plotting1
setwd("./ExData_Plotting1")

## check if My_Plots subdirectory exists:
if (!file.exists("./My_Plots")) {
        dir.create("./My_Plots")
}

## check if My_Scripts subdirectory exists:
if (!file.exists("./My_Scripts")) {
        dir.create("./My_Scripts")
}

## check if Power_Data subdirectory exists:
if (!file.exists("./Power_Data")) {
        dir.create("./Power_Data")
}

## set file url for data download path
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## setwd to the Power_Data subdirectory
setwd("./Power_Data")

## download the file
download.file(fileurl,destfile="./household_power_consumption.zip",method="curl")

## unzip the file
unzip("./household_power_consumption.zip")

## read the resulting text file into memory for analysis
powerData <- read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?',
                        colClasses=c(rep('character', 2), rep('numeric', 7)))

## define function to check if package is installed, used to validate lubridate is installed.
is.installed <- function(mypkg) {
        is.element(mypkg, installed.packages()[,1]) 
}

## verify lubridate installation
if (!is.installed("lubridate")){
        install.packages("lubridate")
}

## load lubridate
library("lubridate")

## convert Date and Time variables
powerData$Date <- dmy(powerData$Date)
powerData$Time <- hms(powerData$Time)

## subset the powerData data frame to the required dates
powerData <- subset(powerData,powerData$Date == dmy("1-2-2007") | powerData$Date == dmy("2-2-2007"))

## setwd to ExData_Plotting1 as starting point for plotting scripts.
setwd("../")

## download the plotting scripts into the My_Plots subdirectory
if (!file.exists("./My_Scripts/plot1.r")) {
        fileurl <- "https://raw.githubusercontent.com/tnt16dj/ExData_Plotting1/master/My_Scripts/plot1.r"
        download.file(fileurl,destfile="./My_Scripts/plot1.r",method="curl")
}

if (!file.exists("./My_Scripts/plot2.r")) {
        fileurl <- "https://raw.githubusercontent.com/tnt16dj/ExData_Plotting1/master/My_Scripts/plot2.r"
        download.file(fileurl,destfile="./My_Scripts/plot2.r",method="curl")
}

if (!file.exists("./My_Scripts/plot3.r")) {
        fileurl <- "https://raw.githubusercontent.com/tnt16dj/ExData_Plotting1/master/My_Scripts/plot3.r"
        download.file(fileurl,destfile="./My_Scripts/plot3.r",method="curl")
}

if (!file.exists("./My_Scripts/plot4.r")) {
        fileurl <- "https://raw.githubusercontent.com/tnt16dj/ExData_Plotting1/master/My_Scripts/plot4.r"
        download.file(fileurl,destfile="./My_Scripts/plot4.r",method="curl")
}

source('./My_Scripts/plot1.r')

source('./My_Scripts/plot2.r')

source('./My_Scripts/plot3.r')

source('./My_Scripts/plot4.r')

## clean up memory
rm(fileurl, is.installed)
rm(is.installed)