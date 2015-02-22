## CodeBook.md  

Coursera Data Science Specialization Course - Getting and Cleaning Data (DS3)


## Input: Original raw data set
The [original] data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:   
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Original data for the project:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Relevant Info from __features_info.txt__ regarding the required selected variables

The original signals were used to estimate the following 33 variables of the feature vector for each pattern:  

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

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions respectively.

Among the set of variables that were estimated from these signals we are interested by : 

* mean(): Mean value   
* std(): Standard deviation   

This will lead to retain 66 columns from the original feature vector dataset during the cleaning process.   


## The Cleaning Processing / R script run_analysis.R

As per requirement, the R script run_analysis.R performs the following actions on the original dataset:

1. Merges the training and the test sets to create one data set.   

2. Extracts only the measurements on the mean and standard deviation for each measurement.    

3. Uses descriptive activity names to name the activities in the data set   

4. Appropriately labels the data set with descriptive variable names.   

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject (which is saved in the output file named tidy_data.txt)

See script also README.me and script run_analysis.R for additional info.


## Output: tidy_data.txt

__List of variables of tidy_data.txt__

Col.  1:   activity  (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS or WALKING_UPSTAIRS)  
 
Col.  2:   subject id (from 1 to 30)
 
The following columns [3-68] are average value of each retained variable for each activity and each subject. Variables are  normalized (unit = []) and bound to [-1, 1] in the original dataset and therefore the final tidy data set.

Col.  3:   tBodyAcc-mean()-X  
Col.  4:   tBodyAcc-mean()-Y  
Col.  5:   tBodyAcc-mean()-Z  
Col.  6:   tBodyAcc-std()-X  
Col.  7:   tBodyAcc-std()-Y  
Col.  8:   tBodyAcc-std()-Z  
Col.  9:   tGravityAcc-mean()-X  
Col. 10:   tGravityAcc-mean()-Y  
Col. 11:   tGravityAcc-mean()-Z  
Col. 12:   tGravityAcc-std()-X  
Col. 13:   tGravityAcc-std()-Y  
Col. 14:   tGravityAcc-std()-Z  
Col. 15:   tBodyAccJerk-mean()-X  
Col. 16:   tBodyAccJerk-mean()-Y  
Col. 17:   tBodyAccJerk-mean()-Z  
Col. 18:   tBodyAccJerk-std()-X  
Col. 19:   tBodyAccJerk-std()-Y  
Col. 20:   tBodyAccJerk-std()-Z  
Col. 21:   tBodyGyro-mean()-X  
Col. 22:   tBodyGyro-mean()-Y  
Col. 23:   tBodyGyro-mean()-Z  
Col. 24:   tBodyGyro-std()-X  
Col. 25:   tBodyGyro-std()-Y  
Col. 26:   tBodyGyro-std()-Z  
Col. 27:   tBodyGyroJerk-mean()-X  
Col. 28:   tBodyGyroJerk-mean()-Y  
Col. 29:   tBodyGyroJerk-mean()-Z  
Col. 30:   tBodyGyroJerk-std()-X  
Col. 31:   tBodyGyroJerk-std()-Y  
Col. 32:   tBodyGyroJerk-std()-Z  
Col. 33:   tBodyAccMag-mean()  
Col. 34:   tBodyAccMag-std()  
Col. 35:   tGravityAccMag-mean()  
Col. 36:   tGravityAccMag-std()  
Col. 37:   tBodyAccJerkMag-mean()  
Col. 38:   tBodyAccJerkMag-std()  
Col. 39:   tBodyGyroMag-mean()  
Col. 40:   tBodyGyroMag-std()  
Col. 41:   tBodyGyroJerkMag-mean()  
Col. 42:   tBodyGyroJerkMag-std()  
Col. 43:   fBodyAcc-mean()-X  
Col. 44:   fBodyAcc-mean()-Y  
Col. 45:   fBodyAcc-mean()-Z  
Col. 46:   fBodyAcc-std()-X  
Col. 47:   fBodyAcc-std()-Y  
Col. 48:   fBodyAcc-std()-Z  
Col. 49:   fBodyAccJerk-mean()-X  
Col. 50:   fBodyAccJerk-mean()-Y  
Col. 51:   fBodyAccJerk-mean()-Z  
Col. 52:   fBodyAccJerk-std()-X  
Col. 53:   fBodyAccJerk-std()-Y  
Col. 54:   fBodyAccJerk-std()-Z  
Col. 55:   fBodyGyro-mean()-X  
Col. 56:   fBodyGyro-mean()-Y  
Col. 57:   fBodyGyro-mean()-Z  
Col. 58:   fBodyGyro-std()-X  
Col. 59:   fBodyGyro-std()-Y  
Col. 60:   fBodyGyro-std()-Z  
Col. 61:   fBodyAccMag-mean()  
Col. 62:   fBodyAccMag-std()  
Col. 63:   fBodyBodyAccJerkMag-mean()  
Col. 64:   fBodyBodyAccJerkMag-std()  
Col. 65:   fBodyBodyGyroMag-mean()  
Col. 66:   fBodyBodyGyroMag-std()  
Col. 67:   fBodyBodyGyroJerkMag-mean()  
Col. 68:   fBodyBodyGyroJerkMag-std()


