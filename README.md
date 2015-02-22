
## Objection
The goal of this project is to prepare tidy data that can be used for later analysis.
## Data Source
The data is collected from the accelerometers from the Samsung Galaxy S smartphone.
Here are the Samsung data for the project: 
[Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
## How The Script Works
You should download the zipped dataset file and unzip it in your working directory. The dataset should be in the "UCI HAR Dataset" directory. The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt' : The subject who performed the activity in Training set.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt' : The subject who performed the activity in Test set.

Now put the 'run_analysis.R' in the working directory and run it. The script will get and clean the dataset, create a tidy data set and then write it into the 'average.txt' file.
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
