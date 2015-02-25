
## Objective
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Task
Create one R script called run_analysis.R that does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data Source
The data is collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at [this site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained:

Here are the data for the project: 
[Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## How The Script Works
- **Data**

You should download the zipped data file and unzip it in your working directory. The dataset should be in the "UCI HAR Dataset" directory. The dataset structure is as follow:
- './UCI HAR Dataset/features_info.txt'
- './UCI HAR Dataset/features.txt'
- './UCI HAR Dataset/activity_labels.txt'
- './UCI HAR Dataset/train/X_train.txt'
- './UCI HAR Dataset/train/y_train.txt'
- './UCI HAR Dataset/train/subject_train.txt'
- './UCI HAR Dataset/test/X_test.txt'
- './UCI HAR Dataset/test/y_test.txt'
- './UCI HAR Dataset/test/subject_test.txt'

The above 9 files will be used and manipulated in the script. In addition, the data files in the 'Inertial Signals' directory are nothing to do with this project and not used.

- **Runtime Environment**

The script 'run_analysis.R' runs on Win7 and R version 3.1.2. The script is dependent on Hmisc package, So you need install this package in advance. The install command would be

        install.packages(Hmisc)

- **Run the Script**

Put the script 'run_analysis.R' in the working directory. The run command would be

        source("run_analysis.R")
        
The script will get and clean the dataset, create a tidy dataset and then write it into the 'average.txt' file.


- **Check the Result**

You can read the result data file into R to check it. The command for reading it in and looking at it in R would be

        data <- read.table("./UCI HAR Dataset/average.txt", header = TRUE)
        View(data)

## What The Script does
1. Read the training and the test sets.
2. Merge the training and the test sets to create one data set.
3. Read the list of all features.
4. Find the measurements on the mean and standard deviation for each measurement.
5. Extract the measurements on the mean and standard deviation for each measurement.
6. Use descriptive activity names to name the activities in the data set.
7. Appropriately label the data set with descriptive variable names.
8. Get the average of each variable for each activity and each subject.
9. Write the average data set into a txt file.

See details in the script and its comment.

Description of all the data variables refers to [CodeBook](https://github.com/bobjones777/Getting-and-Cleaning-Data/blob/master/CodeBook.md).
