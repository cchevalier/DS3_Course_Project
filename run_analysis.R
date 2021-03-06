##
## run_analysis.R
##
## See README.md for a general presentation / requirements of this script.
##
## Script written as required by the Project Assignement 
## for the Data Science Specialization Course - Getting and Cleaning Data (DS3)
##
## (c) cchevalier, Feb. 2015


# package reshape2 should be installed before running this script
# install.packages("reshape2")
library(reshape2)


# Set paths to different data folders
folder_main  <- "./UCI HAR Dataset"
folder_test  <- file.path(folder_main, "test")
folder_train <- file.path(folder_main, "train")


# Load labels for activity & features
labels_activity <- read.table(file.path(folder_main, "activity_labels.txt"))
labels_features <- read.table(file.path(folder_main, "features.txt"))


# Load test data files
subject_test  <- read.table(file.path(folder_test, "subject_test.txt"))
activity_test <- read.table(file.path(folder_test, "y_test.txt"))
features_test <- read.table(file.path(folder_test, "X_test.txt"))


# Load train data files
subject_train  <- read.table(file.path(folder_train, "subject_train.txt"))
activity_train <- read.table(file.path(folder_train, "y_train.txt"))
features_train <- read.table(file.path(folder_train, "X_train.txt"))


# Merge test and train (requirement no 1)
# Assign proper names to the different variables in each test data files (requirement no 4)
subject  <- rbind(subject_test, subject_train)
names(subject)  <- "subject"

activity <- rbind(activity_test, activity_train)
names(activity) <- "activity"

features <- rbind(features_test, features_train)
names(features) <- labels_features[,2]

# Cleaning phase 1
rm(activity_test, activity_train, subject_test, subject_train, features_test, features_train) 


# From the 17 signals of a feature vector we will retain only the 
# variables mean() and std() - (requirement no 2)
#
# I prefer to define a direct index of the selected columns rather
# than using selection by regular pattern which might lead to unwanted
# variables
idx <- c(1:6)               ##  tBodyAcc-XYZ
idx <- c(idx, c(41:46))     ##  tGravityAcc-XYZ
idx <- c(idx, c(81:86))     ##  tBodyAccJerk-XYZ
idx <- c(idx, c(121:126))   ##  tBodyGyro-XYZ
idx <- c(idx, c(161:166))   ##  tBodyGyroJerk-XYZ
idx <- c(idx, c(201:202))   ##  tBodyAccMag
idx <- c(idx, c(214:215))   ##  tGravityAccMag
idx <- c(idx, c(227:228))   ##  tBodyAccJerkMag
idx <- c(idx, c(240:241))   ##  tBodyGyroMag
idx <- c(idx, c(253:254))   ##  tBodyGyroJerkMag
idx <- c(idx, c(266:271))   ##  fBodyAcc-XYZ
idx <- c(idx, c(345:350))   ##  fBodyAccJerk-XYZ
idx <- c(idx, c(424:429))   ##  fBodyGyro-XYZ
idx <- c(idx, c(503:504))   ##  fBodyAccMag
idx <- c(idx, c(516:517))   ##  fBodyAccJerkMag
idx <- c(idx, c(529:530))   ##  fBodyGyroMag
idx <- c(idx, c(542:543))   ##  fBodyGyroJerkMag


# Merge 3 datasets into one data frame retaining 
# only the selected columns given by idx for the 
# features datasets (requirement no 2)
DF <- cbind(activity, subject, features[,idx])

# Change code activity to its proper label (requirement no 4)
DF[,1] <- labels_activity[,2][DF[,1]]

# Cleaning phase 2
remove (activity, subject, features)

# Printing names of each column for latter use in CodeBook.md
# i = 0
# for(n in names(DF)) {
#   i = i + 1
#   print(sprintf("%2i. %s", i, n))
# }

# Creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject (requirement no 5)
#
# First, reshape DF using melt using id: activity and subject
DFmelt <- melt(DF, id=c("activity", "subject"), measures.vars = names(DF[3:68])) 

# Then define tidy data set by computing mean for different measures using dcast 
DFtidy <- dcast(DFmelt, activity + subject ~ variable, mean)

# Finally Save tidy data set
write.table(DFtidy, file = "./tidy_data.txt", row.name=FALSE)

## End of script.
