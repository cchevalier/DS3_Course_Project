# CodeBook.md

__Data Science Specialization Course - Getting and Cleaning Data (DS3)__

## Background
The [original] data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Original data for the 
project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


## Cleaning Processing (see script run_analysis.R)
As per requirement, 
1. Merges the training and the test sets to create one data set.   

2. Extracts only the measurements on the mean and standard deviation for each measurement.    

3. Uses descriptive activity names to name the activities in the data set   

4. Appropriately labels the data set with descriptive variable names.   

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject (which is saved in txt file named tidy_data.txt)


## List of variables of tidy_data.txt
 1  activity  (6 possibilities among LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)  
 
 2  subject id (from 1 to 30)
 
 Following variables are of average value of each retained variable for each activity and each subject  Variables are  normalized in the original dataset (unit = [ ])

 3  tBodyAcc-mean()-X  
 4  tBodyAcc-mean()-Y  
 5  tBodyAcc-mean()-Z  
 6  tBodyAcc-std()-X  
 7  tBodyAcc-std()-Y  
 8  tBodyAcc-std()-Z  
 9  tGravityAcc-mean()-X  
10  tGravityAcc-mean()-Y  
11  tGravityAcc-mean()-Z  
12  tGravityAcc-std()-X  
13  tGravityAcc-std()-Y  
14  tGravityAcc-std()-Z  
15  tBodyAccJerk-mean()-X  
16  tBodyAccJerk-mean()-Y  
17  tBodyAccJerk-mean()-Z  
18  tBodyAccJerk-std()-X  
19  tBodyAccJerk-std()-Y  
20  tBodyAccJerk-std()-Z  
21  tBodyGyro-mean()-X  
22  tBodyGyro-mean()-Y  
23  tBodyGyro-mean()-Z  
24  tBodyGyro-std()-X  
25  tBodyGyro-std()-Y  
26  tBodyGyro-std()-Z  
27  tBodyGyroJerk-mean()-X  
28  tBodyGyroJerk-mean()-Y  
29  tBodyGyroJerk-mean()-Z  
30  tBodyGyroJerk-std()-X  
31  tBodyGyroJerk-std()-Y  
32  tBodyGyroJerk-std()-Z  
33  tBodyAccMag-mean()  
34  tBodyAccMag-std()  
35  tGravityAccMag-mean()  
36  tGravityAccMag-std()  
37  tBodyAccJerkMag-mean()  
38  tBodyAccJerkMag-std()  
39  tBodyGyroMag-mean()  
40  tBodyGyroMag-std()  
41  tBodyGyroJerkMag-mean()  
42  tBodyGyroJerkMag-std()  
43  fBodyAcc-mean()-X  
44  fBodyAcc-mean()-Y  
45  fBodyAcc-mean()-Z  
46  fBodyAcc-std()-X  
47  fBodyAcc-std()-Y  
48  fBodyAcc-std()-Z  
49  fBodyAccJerk-mean()-X  
50  fBodyAccJerk-mean()-Y  
51  fBodyAccJerk-mean()-Z  
52  fBodyAccJerk-std()-X  
53  fBodyAccJerk-std()-Y  
54  fBodyAccJerk-std()-Z  
55  fBodyGyro-mean()-X  
56  fBodyGyro-mean()-Y  
57  fBodyGyro-mean()-Z  
58  fBodyGyro-std()-X  
59  fBodyGyro-std()-Y  
60  fBodyGyro-std()-Z  
61  fBodyAccMag-mean()  
62  fBodyAccMag-std()  
63  fBodyBodyAccJerkMag-mean()  
64  fBodyBodyAccJerkMag-std()  
65  fBodyBodyGyroMag-mean()  
66  fBodyBodyGyroMag-std()  
67  fBodyBodyGyroJerkMag-mean()  
68  fBodyBodyGyroJerkMag-std()  