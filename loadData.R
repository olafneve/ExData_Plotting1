library(readr)
library(dplyr)
library(lubridate)

downloadURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dest_dir <- getwd()

download.file(downloadURL, dest_dir)
unzip("exdata_data_household_power_consumption.zip")

data <- as_tibble(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?"))

data_cleaned <- mutate(data, Date = dmy(Date))

final_data <- filter(data_cleaned, Date >= "2007-02-01" & Date <= "2007-02-02")

