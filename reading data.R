rm(list=ls())

library(dplyr)

setwd("C:/Data Science/4. Exploratory Data Analysis/course projects")

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

data <- filter(data, Date=="1/2/2007"|Date=="2/2/2007")

data$TimeStamp <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%OS")

## my computer easily reads in the whole data file. if one's computer does not, i suggest to read in 
## a small enough first part of the data with giving nrows=x in read.table, filter and then repeat 
## for the next part of the data with skip=x and nrows=y. 
## when all data parts are filtered just append and then make the TimeStamp column