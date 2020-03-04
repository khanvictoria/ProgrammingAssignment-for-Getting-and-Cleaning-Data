---
title: "CodeBook"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
setwd("C:/Users/vkhan/Desktop/Coursera; R programming/Getting and cleaning data/Week 4/Programming Assignment")
load("subject_test.Rdata")
load("subject_train.Rdata")
load("X_train.Rdata")
load("X_test.Rdata")
load("Y_train.Rdata")
load("Y_test.Rdata")
library(Hmisc)
library(data.table)
```

#### I. Loading the data into R

1.1 Load three datasets on test data: subject_test.txt, X_test.txt, y_test.txt 
    from UCI HAR Dataset.        
1.2 Name them subject_test, X_test and y_test correspondingly.         
1.3 Load three datasets on train data: subject_train.txt, X_train.txt, y_train.txt
    from UCI HAR Dataset.        
1.4 Name them subject_train, X_train and y_train correspondingly.        

```{r echo=FALSE}
#list(Subject_test = dim(subject_test), subject_train = dim(subject_train), 
#X_test = dim(X_test), X_train = dim(X_train),
#Y_test = dim(Y_test), Y_train = dim(Y_train))
data.frame(subject_test = dim(subject_test), subject_train = dim(subject_train), 
X_test = dim(X_test), X_train = dim(X_train),
Y_test = dim(Y_test), Y_train = dim(Y_train)) -> dimentions
transpose(dimentions) -> dimentions2
colnames(dimentions2) = c("N of observations", "N of variables")
rownames(dimentions2) = colnames(dimentions)
print(dimentions2)
```

#### II. Merges the training and the test sets to create one data set.
#### Extracts only the measurements on the mean and standard deviation for each measurement.

2.1 Read features.txt data into R        
2.2 Rename columns of X_test and X_train according to the definitions in features dataset        
2.3 Merge all six files into one dataset calling it "Activities"       
2.4 Subset only those columns that have either "[Mm]ean" or "[Ss]td" in their names       

```{r echo=FALSE}
load("features.Rdata")
load("Activities.Rdata")
load("subset_activities.Rdata")
data.frame(features = dim(features), Activities = dim(Activities), subset_activities = dim(subset_activities)) -> Q2
transpose(Q2) -> Q22
rownames(Q22) = colnames(Q2)
colnames(Q22) = c("N of observations", "N of variables")
Q22
```


#### III. Uses descriptive activity names to name the activities in the data set

3.1 Assign appropriate labels to activities as indicated in activity_label.txt     
3.2 The labels are 
      1 WALKING
      2 WALKING_UPSTAIRS
      3 WALKING_DOWNSTAIRS
      4 SITTING
      5 STANDING
      6 LAYING

```{r echo=FALSE}
table(subset_activities$Activity)
```

#### IV. Appropriately labels the data set with descriptive variable names.

4.1 Rename V1 and V1.1 to "Subject_id" and "Activity"     
4.2 Change the abbreviations "Acc", "Gyro", "Mag", "t" and "f" into corresponding words      

```{r echo=FALSE}
names(subset_activities)
```

#### V. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

5.1 Melt the subset_activities dataset by Subject_id and Activity      
5.2 Group by Subject_id, Activity, variables (mean or std) of the feature vector and find average across every variables, activity and subject       
5.3 Save as "tidy_data.txt" and push to the repo 
```{r echo=FALSE}
load("tidy_data.Rdata")
head(tidy_data, 5)
tail(tidy_data, 5)
```















