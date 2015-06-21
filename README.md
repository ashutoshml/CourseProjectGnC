## Coursera Course Project
### Getting and Cleaning Data.

The repo comprises the following main files.

* run_analysis.R: This script performs the following functions:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* CodeBook.md : Provides the necessary description of the cleaned data.

#### To run the project:

1. Download the zip - file from here: 
	[Zipped Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Extract the zipped file using any archive manager. The extracted folder should be named "UCI HAR Dataset". If not, please change the folder name to "UCI HAR Dataset"
3. Open R console and set working directory to the directory where you have extracted the folder. (Path does not include "UCI HAR Dataset").
For example: If folder is extracted to "C:\Windows\Users\R\UCI HAR Dataset" then set working directory as "C:\Windows\Users\R", using setwd("C:\Windows\Users\R")
4. Run the script run_analysis.R from the R console. You should be able to get the tidy data set from there.

