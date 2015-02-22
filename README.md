## README.md  

DS3_Course_Project : Project repository for the Coursera Data Science Specialization Course - Getting and Cleaning Data (DS3)
  
  
## run_analysis.R
As required by the assigment, this R script does the following on the original dataset:       
1. Merges the training and the test sets to create one data set.   
2. Extracts only the measurements on the mean and standard deviation for each measurement.    
3. Uses descriptive activity names to name the activities in the data set   
4. Appropriately labels the data set with descriptive variable names.   
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.   

Please see comments in the R script for additional information on the way this processing is achieved.

Please note that package reshape2 should be installed before running this script
use command: install.packages("reshape2")

  
## CodeBook.md
This file presents the input data, cleaning process and the output tidy data set.
