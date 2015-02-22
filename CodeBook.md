# Code Book

# Objects in 'run_analysis.R'
- **x_train**: data from the file 'X_train.txt', class: data.frame, 7352 obs. of 561 variables (561 features)
- **y_train**: data from the file 'y_train.txt', class: data.frame, 7352 obs. of 1 variables (activity label)
- **subject_train**:  data from the file 'subject_train.txt', class: data.frame, 7352 obs. of 1 variables (subject)
- **x_test**: data from the file 'X_test.txt', class: data.frame, 2947 obs. of 561 variables (561 features)
- **y_test**: data from the file 'y_test.txt', class: data.frame, 2947 obs. of 1 variables (activity label)
- **subject_test**:  data from the file 'subject_test.txt', class: data.frame, 2947 obs. of 1 variables (subject)

- **train**: combine *x_train*, *y_train* and *subject_train* by columns
- **test**: combine *x_test*, *y_test* and *subject_test* by columns
- **data**: combine *train* and *test* by rows. **this is the complete data set.**

- **features**: data from the file 'features.txt', class: data.frame, 561 obs. of 2 variables
- **msd.pos**: the position vector of the measurements on the mean and standard deviation for each measurement, 
               class: integer, length: 66
- **msd**: extracted data including only the measurements for mean and standard deviation,
           class: data.frame, 10299 obs. of 68 variables
- **activity_labels**: data from the file 'activity_labels.txt', class: data.frame, 6 obs. of 2 variables
- **average**: the average of each variable for each activity and each subject, class: data.frame, 
               180 obs. of 68 variables
