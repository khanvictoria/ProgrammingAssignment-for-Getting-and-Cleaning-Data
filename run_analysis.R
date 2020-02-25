setwd("C:/Users/vkhan/Desktop/Coursera; R programming/Getting and cleaning data/Week 4/Programming Assignment")
library(readr)
library(dplyr)
library(magrittr)
library(data.table)
library(stringr)

# Merges the training and the test sets to create one data set.
## Creating a test dataset by merging three datasets from the folder "test"
subject_test <- read.table(paste("./getdata_projectfiles_UCI HAR Dataset/",
                           "UCI HAR Dataset/test/subject_test.txt", sep = ""), 
                           quote="\"", comment.char="", stringsAsFactors=FALSE)
X_test <- read.table(paste("./getdata_projectfiles_UCI HAR Dataset/",
                                 "UCI HAR Dataset/test/X_test.txt", sep = ""), 
                           quote="\"", comment.char="", stringsAsFactors=FALSE)
Y_test <- read.table(paste("./getdata_projectfiles_UCI HAR Dataset/",
                                 "UCI HAR Dataset/test/y_test.txt", sep = ""), 
                           quote="\"", comment.char="", stringsAsFactors=FALSE)

## Creating a training dataset by merging three datasets from the folder "train"
subject_train <- read.table(paste("./getdata_projectfiles_UCI HAR Dataset/",
                                 "UCI HAR Dataset/train/subject_train.txt", sep = ""), 
                           quote="\"", comment.char="", stringsAsFactors=FALSE)
X_train <- read.table(paste("./getdata_projectfiles_UCI HAR Dataset/",
                           "UCI HAR Dataset/train/X_train.txt", sep = ""), 
                     quote="\"", comment.char="", stringsAsFactors=FALSE)
Y_train <- read.table(paste("./getdata_projectfiles_UCI HAR Dataset/",
                           "UCI HAR Dataset/train/y_train.txt", sep = ""), 
                     quote="\"", comment.char="", stringsAsFactors=FALSE)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table(paste("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/",
                             "features.txt", sep=""), quote="\"", comment.char="")

colnames(X_test) = features$V2
colnames(X_train) = features$V2
Test = do.call(cbind, list(subject_test, Y_test, X_test)) 
Train = do.call(cbind, list(subject_test, Y_test, X_test)) 
Activities = rbind(Test, Train)
Activities[, c(1,2,grep("[Mm]ean|[Ss]td", names(Activities)))] -> subset_activities




