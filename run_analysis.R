# Read the train set
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read the test set
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Merge the training and the test sets to create one data set
train <- cbind(x_train, y_train, subject_train)
test <- cbind(x_test, y_test, subject_test)
data <- rbind(train, test)

# remove all the variables but data
# rm(list = ls()[-which(ls() == "data")])

# Read the list of all features
features <- read.table("./UCI HAR Dataset/features.txt", colClasses = "character")

# Find the measurements on the mean and standard deviation for each measurement
msd.pos <- grep("-mean\\(|-std\\(", features[, 2])

# Extract the measurements on the mean and standard deviation for each measurement
msd <- data[, c(563, 562, msd.pos)]

# remove the variable data
#rm(data)

# Use descriptive activity names to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
msd[, 2] <- activity_labels[msd[, 2], 2]

# Appropriately label the data set with descriptive variable names
var.names <- gsub("\\(\\)", "", gsub("-", ".", features[msd.pos, 2]))
names(msd) <- c("subject", "activity", var.names)

# Get the average of each variable for each activity and each subject
average <- Hmisc::summarize(msd[,-(1:2)], Hmisc::llist(subject = msd$subject, activity = msd$activity), 
                            colMeans, keepcolnames = T)

# Write the average data set into a txt file
write.table(average, file = "./UCI HAR Dataset/average.txt", row.name = FALSE)

# Remove everything in the working environment
#rm(list=ls())