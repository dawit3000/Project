## Dawit Aberra - 8/24/2014
## R Codes for "Getting and Cleaning Data"
## for the data available 
## from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
## and locally available at: 
## setwd("E:/Coursera/Getting and Cleaning Data")
## Step 0: Reads all the relevant data in the datasets to  R without significantly
## changing original file names;investigate their size and appearance: names,
## dim(),str(),table(),summary(), etc
features<- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE) ## dim=561 by 2
X_train<-read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
X_test<-read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
y_train<-read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
y_test<-read.csv("UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
subject_train<-read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
subject_test<-read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
activity_labels<-read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
##
## STEP 1. Merges the training and the test sets to create one data set.
data<-rbind(X_train,X_test)  ## dim(data)=10299 X 561
subject<-rbind(subject_train,subject_test) ## dim(subject)=10299 X 1
activity<-rbind(y_train,y_test)    ## dim(activity)=10299 X 1
##
## STEP 2. Extract(s) only on the measurements of mean and standard 
## deviation (std) for each measurement.
## We will retain the subset of "data" whose column names contain mean or Std, 
## and call it again "data"; assign polished names to columns of the new "data",
## from "features", as  appropriate for use in R, i.e., afetr 
## removing unwanted charactors.
MEAN_STD_indices <- grep("mean\\(\\)|std\\(\\)", features[, 2]) ##length(MEAN_STD_indices)=66
data <- data[, MEAN_STD_indices]
names(data) <- gsub("\\(\\)", "", features[MEAN_STD_indices, 2])
names(data) <- gsub("mean", "MEAN", names(data))
names(data) <- gsub("std", "STD", names(data))
names(data) <- gsub("-", "", names(data))
## dim(data) 10299 by   66

## STEP 3: Use(s) descriptive activity names to name the activities in 
## the data set.
## STEP 4. Appropriately label(s) the data set with descriptive variable names. 
## It will use the easiest (but not the shortest) way to assign activity 
## names to activities
names(subject)<-"subject"
names(activity)<-"activity"
data<-cbind(data,subject,activity)
data$activity[data$activity == 1] <- "WALKING"
data$activity[data$activity == 2] <- "WALKING_UPSTAIRS"
data$activity[data$activity == 3] <- "WALKING_DOWNSTAIRS"
data$activity[data$activity == 4] <- "SITTING"
data$activity[data$activity == 5] <- "STANDING"
data$activity[data$activity == 6] <- "LAYING"
tidy1<-data
## dim(tidy1): 10299 by 68
##
## STEP 5. Creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject. 
data$activity <- as.factor(data$activity)
data$subject <- as.factor(data$subject)
tidy2<- aggregate(data,by=list(data$activity,data$subject),FUN=mean)
## Finally, we remove the subject and activity columns from tidy2, since their 
## means DMS (coerces NA).The resulting tidy data will be stored as "tidy2".
tidy2$activity<-NULL
tidy2$subject<-NULL
write.table(tidy2, "tidy2.txt")
## write.table(tidy2, "tidy2.txt", row.names=FALSe). Note that in this case I do not 
## recommend setting row.name to 0, although was requested.
tidy2<-read.table("tidy2.txt")
## dim(tidy2): 180 by 68
