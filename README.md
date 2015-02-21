# DS3_Course_Project
Project repository for the Data Science Course "Getting and Cleaning Data" (DS3)

## run_analysis.R
As required by the assigment, this R script does the following:       

1. Merges the training and the test sets to create one data set.   

2. Extracts only the measurements on the mean and standard deviation for each measurement.    

3. Uses descriptive activity names to name the activities in the data set   

4. Appropriately labels the data set with descriptive variable names.   

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.   



## Relevant Info from __features_info.txt__ regarding the required selected variables
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

Among the set of variables that were estimated from these signals we are interested by : 

* mean(): Mean value
* std(): Standard deviation

This will lead to retain 66 columns from the orginal datasets.