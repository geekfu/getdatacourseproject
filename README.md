==================================================================
Human Activity Recognition Using Smartphones Dataset - Tidy Data
Homework from Coursera data specialization track
==================================================================
Raw dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Course Intro: https://class.coursera.org/getdata-003/
Creator: Fu Jian
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.

What I have done is:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


A brief introduction for all the files:
==================================================================
-Dataset: a filefolder that stores raw data unzipped from getdata-projectfiles-UCI HAR Dataset.zip
-getdata-projectfiles-UCI HAR Dataset.zip: a zip file downloaded from "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
-run_analysis.R: a R script that turns the raw data into tidy data
-tidyData.txt: processed data set
-CodeBook.md: describes the variables, the data, and any transformations or work that I performed to clean up the data
