---
title: "CodeBook.md"
author: "dawit3000"
date: "Sunday, August 24, 2014"
output: html_document
---
Note: This CodeBook accompanies the R script run_analysis.R.

Data was collected  from 30 volunteer “subjects” . Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) , which we call “activity labels” later, wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the following was captured: 3-axial linear acceleration and; 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.

Initial step involved reading and studying data, which was available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data sets were read to a local folder  “UCI HAR Dataset/”  in to the following variables without changing names from the original files: “features”;  ” X_train”;  “ X_test”;   “y_train”;  “y_test”;  “subject_train”; “subject_test”; and “activity_labels”.

By combining the “train” and “test” activities, the script creates one dataset and reads the result in to the variable “data” (save labels for at about the end). The script continues to improve “data” till the end, until the data becomes tidy (saved as tidy1, and tidy2 after being aggregated with averages of two group of variables list.
                                                                                                                                                                                                                                                    
In STEP 1, the script merges the training and the test sets to create one data set and saves the results in three variables, namely “data”, “subject” and “activity”.

In STEP 2, it extracts only on the measurements of mean and standard deviation (std) for each measurement. The retained subset of "data” has column names that contain either mean or Std (c/o grep function).  Polished names have been assigned to columns of the new "data"  from "features", as  they were appropriate for use in R, after removing unwanted characters.

STEP 3 and 4 involved the use of descriptive activity names to name the activities in the data set and appropriately labeling the data sets with descriptive variable names. The tidy data output at this step would be available as ” tidy1”

The last step involved creation of  a second, independent tidy data set with the average of  each variable for each activity and each subject. The last tidy data would be available  as “tidy2” in the R-environment or as “tidy2.txt” in the working local directory.

Variables in the tidy2.txt (description of each variable below is available at the original wider variable source:

```
[1] "Group.1"                   "Group.2"                   "tBodyAccMEANX"           
[4] "tBodyAccMEANY"             "tBodyAccMEANZ"            "tBodyAccSTDX"            
[7] "tBodyAccSTDY"             "tBodyAccSTDZ"             "tGravityAccMEANX"        
[10] "tGravityAccMEANY"          "tGravityAccMEANZ"         "tGravityAccSTDX"         
[13] "tGravityAccSTDY"          "tGravityAccSTDZ"          "tBodyAccJerkMEANX"       
[16] "tBodyAccJerkMEANY"        "tBodyAccJerkMEANZ"        "tBodyAccJerkSTDX"        
[19] "tBodyAccJerkSTDY"         "tBodyAccJerkSTDZ"         "tBodyGyroMEANX"          
[22] "tBodyGyroMEANY"           "tBodyGyroMEANZ"           "tBodyGyroSTDX"           
[25] "tBodyGyroSTDY"            "tBodyGyroSTDZ"            "tBodyGyroJerkMEANX"      
[28] "tBodyGyroJerkMEANY"       "tBodyGyroJerkMEANZ"       "tBodyGyroJerkSTDX"       
[31] "tBodyGyroJerkSTDY"        "tBodyGyroJerkSTDZ"        "tBodyAccMagMEAN"         
[34] "tBodyAccMagSTD"           "tGravityAccMagMEAN"       "tGravityAccMagSTD"       
[37] "tBodyAccJerkMagMEAN"      "tBodyAccJerkMagSTD"       "tBodyGyroMagMEAN"        
[40] "tBodyGyroMagSTD"          "tBodyGyroJerkMagMEAN"     "tBodyGyroJerkMagSTD"     
[43] "fBodyAccMEANX"            "fBodyAccMEANY"            "fBodyAccMEANZ"           
[46] "fBodyAccSTDX"             "fBodyAccSTDY"             "fBodyAccSTDZ"            
[49] "fBodyAccJerkMEANX"        "fBodyAccJerkMEANY"        "fBodyAccJerkMEANZ"       
[52] "fBodyAccJerkSTDX"         "fBodyAccJerkSTDY"         "fBodyAccJerkSTDZ"        
[55] "fBodyGyroMEANX"           "fBodyGyroMEANY"           "fBodyGyroMEANZ"          
[58] "fBodyGyroSTDX"            "fBodyGyroSTDY"            "fBodyGyroSTDZ"           
[61] "fBodyAccMagMEAN"          "fBodyAccMagSTD"           "fBodyBodyAccJerkMagMEAN" 
[64] "fBodyBodyAccJerkMagSTD"   "fBodyBodyGyroMagMEAN"     "fBodyBodyGyroMagSTD"     
[67] "fBodyBodyGyroJerkMagMEAN" "fBodyBodyGyroJerkMagSTD" 

```
 Please see the “Readme.md” file for further info or links to the datasets.

