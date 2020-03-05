---
title: "CodeBook"
output: 
  html_document:
    keep_md: true
---



#### I. Loading the data into R

1.1 Load three datasets on test data: subject_test.txt, X_test.txt, y_test.txt 
    from UCI HAR Dataset.        
1.2 Name them subject_test, X_test and y_test correspondingly.         
1.3 Load three datasets on train data: subject_train.txt, X_train.txt, y_train.txt
    from UCI HAR Dataset.        
1.4 Name them subject_train, X_train and y_train correspondingly.        


```
##               N of observations N of variables
## subject_test               2947              1
## subject_train              7352              1
## X_test                     2947            561
## X_train                    7352            561
## Y_test                     2947              1
## Y_train                    7352              1
```

#### II. Merges the training and the test sets to create one data set.
#### Extracts only the measurements on the mean and standard deviation for each measurement.

2.1 Read features.txt data into R        
2.2 Rename columns of X_test and X_train according to the definitions in features dataset        
2.3 Merge all six files into one dataset calling it "Activities"       
2.4 Subset only those columns that have either "[Mm]ean" or "[Ss]td" in their names       


```
##                   N of observations N of variables
## features                        561              2
## Activities                    10299            563
## subset_activities             10299             88
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


```
##             Activity Freq
## 1            WALKING 1722
## 2   WALKING_UPSTAIRS 1544
## 3 WALKING_DOWNSTAIRS 1406
## 4            SITTING 1777
## 5           STANDING 1906
## 6             LAYING 1944
```

#### IV. Appropriately labels the data set with descriptive variable names.

4.1 Rename V1 and V1.1 to "Subject_id" and "Activity"     
4.2 Change the abbreviations "Acc", "Gyro", "Mag", "t" and "f" into corresponding words      

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:200px; overflow-x: scroll; width:900px; "><table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> Var_names </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Subject_id </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Activity </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometer-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometer-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometer-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometer-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometer-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometer-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometer-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometer-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometer-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometer-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometer-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometer-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerk-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerk-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerk-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerk-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerk-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerk-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscope-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscope-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscope-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscope-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscope-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscope-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerk-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerk-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerk-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerk-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerk-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerk-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometerMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeGravityAccelerometerMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerkMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyAccelerometerJerkMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerkMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TimeBodyGyroscopeJerkMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-meanFreq()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-meanFreq()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometer-meanFreq()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-meanFreq()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-meanFreq()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerJerk-meanFreq()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-mean()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-mean()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-mean()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-std()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-std()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-std()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-meanFreq()-X </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-meanFreq()-Y </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyGyroscope-meanFreq()-Z </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyAccelerometerMagnitude-meanFreq() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyAccelerometerJerkMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyAccelerometerJerkMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyAccelerometerJerkMagnitude-meanFreq() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyGyroscopeMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyGyroscopeMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyGyroscopeMagnitude-meanFreq() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyGyroscopeJerkMagnitude-mean() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyGyroscopeJerkMagnitude-std() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FrequencyBodyBodyGyroscopeJerkMagnitude-meanFreq() </td>
  </tr>
  <tr>
   <td style="text-align:left;"> angle(TimeBodyAccelerometerMean,gravity) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> angle(TimeBodyAccelerometerJerkMean),gravityMean) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> angle(TimeBodyGyroscopeMean,gravityMean) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> angle(TimeBodyGyroscopeJerkMean,gravityMean) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> angle(X,gravityMean) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> angle(Y,gravityMean) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> angle(Z,gravityMean) </td>
  </tr>
</tbody>
</table></div>

#### V. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

5.1 Melt the subset_activities dataset by Subject_id and Activity      
5.2 Group by Subject_id, Activity, variables (mean or std) of the feature vector and find average across every variables, activity and subject       
5.3 Save as "tidy_data.txt" and push to the repo 

```
## # A tibble: 5 x 4
## # Groups:   Activity, Subject_id [1]
##   Activity Subject_id Measure_Axis                   average
##   <fct>         <int> <fct>                            <dbl>
## 1 WALKING           1 TimeBodyAccelerometer-mean()-X  0.277 
## 2 WALKING           1 TimeBodyAccelerometer-mean()-Y -0.0174
## 3 WALKING           1 TimeBodyAccelerometer-mean()-Z -0.111 
## 4 WALKING           1 TimeBodyAccelerometer-std()-X  -0.284 
## 5 WALKING           1 TimeBodyAccelerometer-std()-Y   0.114
```

```
## # A tibble: 5 x 4
## # Groups:   Activity, Subject_id [1]
##   Activity Subject_id Measure_Axis                                 average
##   <fct>         <int> <fct>                                          <dbl>
## 1 LAYING           30 angle(TimeBodyGyroscopeMean,gravityMean)      0.0372
## 2 LAYING           30 angle(TimeBodyGyroscopeJerkMean,gravityMean)  0.0174
## 3 LAYING           30 angle(X,gravityMean)                          0.500 
## 4 LAYING           30 angle(Y,gravityMean)                         -0.492 
## 5 LAYING           30 angle(Z,gravityMean)                         -0.507
```















