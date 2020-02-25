setwd("C:/Users/vkhan/Desktop/Coursera; R programming/Getting and cleaning data/Week 4/Programming Assignment")
library(readr)
library(dplyr)
library(magrittr)
library(data.table)

#Loading Testing data
testlist =list.files(paste("C:/Users/vkhan/Desktop//Coursera; R programming/",
                           "Getting and cleaning data/Week 4/Programming Assignment/",
                           "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals", sep=""))
setwd(paste("C:/Users/vkhan/Desktop//Coursera; R programming/",
            "Getting and cleaning data/Week 4/Programming Assignment/",
            "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals", sep=""))

Test = rbindlist(sapply(testlist, fread, simplify = FALSE), use.names = TRUE, idcol = "FileName")
sum(is.na(Train))  

#loading Training data
trainlist =list.files(paste("C:/Users/vkhan/Desktop//Coursera; R programming/",
                            "Getting and cleaning data/Week 4/Programming Assignment/",
                            "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals", sep=""))
setwd(paste("C:/Users/vkhan/Desktop/Coursera; R programming/",
            "Getting and cleaning data/Week 4/Programming Assignment/",
            "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals", sep=""))

Train = rbindlist(sapply(trainlist, fread, simplify = FALSE), use.names = TRUE, idcol = "FileName")
sum(is.na(Train))                              



