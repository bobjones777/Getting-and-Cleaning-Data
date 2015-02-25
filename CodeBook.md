# Code Book

## Units
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

## Raw Data
- **features.txt**: read into *features*, class: data.frame, 561 obs. of 2 variables  
    561 obs.: correspond to 561 features(measurements)  
    Variable 1: feature ID  
    Variable 2: feature name  
- **activity_labels.txt**: read into *activity_labels*, class: data.frame, 6 obs. of 2 variables  
    6 obs.: correspond to 6 kinds of activities  
    Variable 1: activity ID  
    Variable 2: activity name  
- **X_train.txt**: read into *x_train*, class: data.frame, 7352 obs. of 561 variables  
    7352 obs.: correspond to 7352 activities performed by 30 subjects  
    561 variables: correspond to 561 features(measurements)  
- **y_train.txt**: read into *y_train*, class: data.frame, 7352 obs. of 1 variable  
    7352 obs.: correspond to 7352 activities performed by 30 subjects  
    variable 1: activity number  
- **subject_train.txt**:  read into *subject_train*, class: data.frame, 7352 obs. of 1 variables  
    7352 obs.: correspond to 7352 activities performed by 30 subjects  
    variable 1: subject ID  
- **X_test.txt**: read into *x_test*, class: data.frame, 2947 obs. of 561 variables  
    2947 obs.: correspond to 2947 activities performed by 30 subjects  
    561 variables: correspond to 561 features(measurements)  
- **y_test.txt**: read into *y_test*, class: data.frame, 2947 obs. of 1 variables  
    2947 obs.: correspond to 2947 activities performed by 30 subjects  
    variable 1: activity number  
- **subject_test.txt**:  read into *subject_test*, class: data.frame, 2947 obs. of 1 variables  
    2947 obs.: correspond to 2947 activities performed by 30 subjects  
    variable 1: subject ID  

## Merging Data
- **train**: combine *x_train*, *y_train* and *subject_train* by columns, class: data.frame, 7352 obs. of 563 variables  
    7352 obs.: correspond to 7352 activities performed by 30 subjects  
    563 variables: 561 measurements + activity number + subject ID  
- **test**: combine *x_test*, *y_test* and *subject_test* by columns, class: data.frame, 7352 obs. of 563 variables  
    2947 obs.: correspond to 2947 activities performed by 30 subjects  
    563 variables: 561 measurements + activity number + subject ID  
- **data**: combine *train* and *test* by rows, class: data.frame, 10299 obs. of 563 variables  
    10299 obs.: correspond to 10299 activities performed by 30 subjects  
    563 variables: 561 measurements + activity number + subject ID  
    **data is the complete dataset.**  

## Data Subset
- **msd**: extracted data, including only the measurements for mean and standard deviation for each measurement, class: data.frame, 10299 obs. of 68 variables  
    10299 obs.: correspond to 10299 activities performed by 30 subjects  
    68 variables: subject ID + activity name + 66 measurements  

## Tidy Data
- **average**: the average of each variable for each activity and each subject, class: data.frame, 180 obs. of 68 variables  
    180 obs.: 30 subjects * 6 activities  
    68 variables: subject ID + activity name + 66 measurements

