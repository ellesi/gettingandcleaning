## Data

Samsung data from
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Variables
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

## Analysis steps
* 1st: define colums to be read (features that contain either mean or std in their names)

* 2nd: read activity labels, and transform them into factors
* 3rd: read subjects
* 4th: read the wanted data
* 5th: transform the shape of the data frame using melt
* 6th: bulid the tidy data set that contains the average of each variable for each activity and each subject
* 7th: sort the data frame according to subjects 

