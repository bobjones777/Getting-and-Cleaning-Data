# Code Book

# Objects for the Training set
- **x_train**: data from the file 'X_train.txt', class: data.frame, 7352 obs. of 561 variables (561 features)
- **y_train**: data from the file 'y_train.txt', class: data.frame, 7352 obs. of 1 variables (activity number)
- **subject_train**:  data from the file 'subject_train.txt', class: data.frame, 7352 obs. of 1 variables (subject ID)

# Objects for the test set
- **x_test**: data from the file 'X_test.txt', class: data.frame, 2947 obs. of 561 variables (561 features)
- **y_test**: data from the file 'y_test.txt', class: data.frame, 2947 obs. of 1 variables (activity number)
- **subject_test**:  data from the file 'subject_test.txt', class: data.frame, 2947 obs. of 1 variables (subject ID)

# Objects for merging
- **train**: combine *x_train*, *y_train* and *subject_train* by columns (561 features + activity number + subject ID)
- **test**: combine *x_test*, *y_test* and *subject_test* by columns (561 features + activity number + subject ID)
- **data**: combine *train* and *test* by rows (7352 obs. + 2947 obs.) 

**data is the complete data set.**

# Objects for variable names
- **features**: data from the file 'features.txt', class: data.frame, 561 obs. of 2 variables, the second column are 561 feature names
- **msd.pos**: the position vector of the measurements on the mean and standard deviation for each measurement, 
               class: integer, length: 66

# Activity name
- **activity_labels**: data from the file 'activity_labels.txt', class: data.frame, 6 obs. of 2 variables, the second column are 6 activity names

# Subseted data
- **msd**: extracted data, including only the measurements for mean and standard deviation,
           class: data.frame, 10299 obs. of 68 variables (subject ID + activity name + 66 measurements)

# Tidy data
- **average**: the average of each variable for each activity and each subject, class: data.frame, 
               180 obs. (30 subjects * 6 activities) of 68 variables (subject ID + activity name + 66 measurements)
