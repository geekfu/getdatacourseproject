# Data dictionary
## Data explaination
1. activity: factor / 6 activities that have been measured
        -"WALKING"
        -"WALKING_UPSTAIRS"
        -"WALKING_DOWNSTAIRS"
        -"SITTING"
        -"STANDING"
        -"LAYING"

2. subject_index: numerical / 1 to 30 represent 30 volunteers

3. other variables: refer to the Dataset/features_info.txt for detailed explaination
they represent the average of a measurement in a certain time period

## Raw and tidy data
Raw dataset: Dataset/train/X_train.txt, y_train.txt, subject_train.txt
             Dataset/test/X_test.txt, y_test.txt, subject_test.txt

Tidy dataset: tidyData.csv

## process
1. Merges the training and the test sets to create one data set.
   rbind the train and test datasets
2. Extracts only the measurements on the mean and standard deviation for each measurement.
   only extracts the column with the name mean() and std()
3. Uses descriptive activity names to name the activities in the data set
   use the txt file called "activity_label.txt"
4. Appropriately labels the data set with descriptive activity names.
   replace the numerical data with the concrete one
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   melt and dcast the dataset







