##unzip the file
if (!file.exists("UCI HAR Dataset")) {
        if (!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
                stop("was expecting HAR Dataset folder or zip file")
        } else {
                unzip("getdata-projectfiles-UCI HAR Dataset.zip")
        }
}

##reorganize the data frame for the test and train data
# for train data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
train <- cbind(X_train,
               subject_train,
               y_train)
# for test data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
test <- cbind(X_test,
               subject_test,
               y_test)
# read feature.txt
featureNames <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=F)
# Step-1: Merges the training and the test sets to create one data set.
mergedData <- rbind(train,test)
colnames(mergedData) <- c(featureNames[,2],
                          "subject_index",
                          "activity")
# Step-2: Extracts only the measurements on the mean and standard deviation for each measurement.
targetedCol <- c(grep("mean()",featureNames[,2],fixed=T),
                   grep("std()",featureNames[,2],fixed=T),
                   562,
                   563)
extractedData <- mergedData[,targetedCol]
# Step-3: Uses descriptive activity names to name the activities in the data set
# Step-4: Appropriately labels the data set with descriptive activity names. 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
extractedData$activity <- activity_labels[mergedData$activity,2]
# Step-5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
extractedData.melt <- melt(extractedData, id=c("subject_index","activity"))
tidyData <- dcast(extractedData.melt,
                                 activity+subject_index ~ variable,
                                 mean)
#output the data to a csv file
write.csv(tidyData,file="tidyData.txt")

