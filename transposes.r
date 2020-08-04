install.packages("dplyr")
install.packages("stringr")
install.packages("ggplot2")
install.packages("data.table")

library(dplyr)
library(stringr)
library(ggplot2)
library(class)
library(data.table)

setwd("#your.dir#")

#Load data

tableGenes <- read.csv("#your.file.csv", sep=",", 
                       header = F, fill = T, stringsAsFactors = FALSE)


DataSetnew = transpose(tableGenes)

write.csv(DataSetnew, '#your.path.filename', row.names = FALSE)