#Reading in the test data
test <- read.table("UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
activity_test <- read.table("UCI HAR Dataset/test/y_test.txt")

#Reading in the training data
train <- read.table("UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
activity_train <- read.table("UCI HAR Dataset/train/y_train.txt")

#Reading in column names and activity labels
col_names <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities <- as.character(activities$V2)

#Merging data together
total_test <- cbind(subject_test, activity_test, test)
total_train <- cbind(subject_train, activity_train, train)
total_data <- rbind(total_test, total_train)

#Renaming Columns and inserting activity name strings
names(total_data) <- c("SubjectID", "ActivityName", as.character(col_names$V2))
total_data$ActivityName <- activities[total_data$ActivityName]

#Extracting mean and standard deviation data
#data to keep
mn <- grep("mean", names(total_data), ignore.case=TRUE)
sd <- grep("std", names(total_data), ignore.case=TRUE)
#data to ignore
mnfr <- grep("meanFreq", names(total_data), ignore.case=TRUE)
ang <- grep("angle", names(total_data), ignore.case=TRUE)
#subsetting data
keep <- setdiff(union(mn, sd), union(mnfr, ang))
sub_total_data <- total_data[ , c(1,2,sort(keep))]

#Renaming Columns
names(sub_total_data) <- c("SubjectID","ActivityName",
                         "timeBodyAccelerationMeanX","timeBodyAccelerationMeanY","timeBodyAccelerationMeanZ",
                         "timeBodyAccelerationStdX","timeBodyAccelerationStdY","timeBodyAccelerationStdZ",
                         "timeGravityAccelerationMeanX","timeGravityAccelerationMeanY","timeGravityAccelerationMeanZ",
                         "timeGravityAccelerationStdX","timeGravityAccelerationStdY","timeGravityAccelerationStdZ",
                         "timeBodyAccelerationJerkMeanX","timeBodyAccelerationJerkMeanY","timeBodyAccelerationJerkMeanZ",
                         "timeBodyAccelerationJerkStdX","timeBodyAccelerationJerkStdY","timeBodyAccelerationJerkStdZ",
                         "timeBodyGyroscopicMeanX","timeBodyGyroscopicMeanY","timeBodyGyroscopicMeanZ",
                         "timeBodyGyroscopicStdX","timeBodyGyroscopicStdY","timeBodyGyroscopicStdZ",
                         "timeBodyGyroscopicJerkMeanX","timeBodyGyroscopicJerkMeanY","timeBodyGyroscopicJerkMeanZ",
                         "timeBodyGyroscopicJerkStdX","timeBodyGyroscopicJerkStdY","timeBodyGyroscopicJerkStdZ",
                         "timeBodyAccelerationMagnitudeMean","timeBodyAccelerationMagnitudeStd",
                         "timeGravityAccelerationMagnitudeMean","timeGravityAccelerationMagnitudeStd",
                         "timeBodyAccelerationJerkMagnitudeMean","timeBodyAccelerationJerkMagnitudeStd",
                         "timeBodyGyroscopicMagnitudeMean","timeBodyGyroscopicMagnitudeStd",
                         "timeBodyGyroscopicJerkMagnitudeMean","timeBodyGyroscopicJerkMagnitudeStd",
                         "freqBodyAccelerationMeanX","freqBodyAccelerationMeanY","freqBodyAccelerationMeanZ",
                         "freqBodyAccelerationStdX","freqBodyAccelerationStdY","freqBodyAccelerationStdZ",
                         "freqBodyAccelerationJerkMeanX","freqBodyAccelerationJerkMeanY","freqBodyAccelerationJerkMeanZ",
                         "freqBodyAccelerationJerkStdX","freqBodyAccelerationJerkStdY","freqBodyAccelerationJerkStdZ",
                         "freqBodyGyroscopicMeanX","freqBodyGyroscopicMeanY","freqBodyGyroscopicMeanZ",
                         "freqBodyGyroscopicStdX","freqBodyGyroscopicStdY","freqBodyGyroscopicStdZ",
                         "freqBodyAccelerationMagnitudeMean","freqBodyAccelerationMagnitudeStd",
                         "freqBodyAccelerationJerkMagnitudeMean","freqBodyAccelerationJerkMagnitudeStd",
                         "freqBodyGyroscopicMagnitudeMean","freqBodyGyroscopicMagnitudeStd",
                         "freqBodyGyroscopicJerkMagnitudeMean","freqBodyGyroscopicJerkMagnitudeStd")

#Finding average data for each activity and subject
final_data <- aggregate(sub_total_data[,3:68], by=list(sub_total_data$SubjectID,sub_total_data$ActivityName), FUN=mean)

#Creating tidy data file
names(final_data)[1:2] <- c("SubjectID", "ActivityName")
write.table(final_data, file="Human_Activity_Averages.txt", row.names=FALSE)