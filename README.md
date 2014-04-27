## Introduction

Prepare a tidy data set to be used in the later analysis. 

## Requirements
* R
* reshape2 package

## Getting data

We are using data from: 
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Full description of data is available from:
*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Getting the data:
* Download the file using download.file("link here", destfile="file name here", method="curl")
* Unzip using unzip()
* Set the path using setwd()

## Describe data

* 30 volunteers (70% in the training data set, 30% in the test data set)
* 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

## Running script
*Type: source("run_analysis.R")

## Output

A tidy dataset that contains 180 rows ( = 30 volunteers * 6 activies), and 81 columns (subject, activity + all colums from the data that contained eiher mean or std in the feature names). 