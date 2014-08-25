---
title: "README.md"
author: "Dawit Aberra"
date: "Sunday, August 24, 2014"
output: html_document
---
*Getting and Cleaning Data: an R-Script to create a tidy data*

Availability of (1) open source and free but incredibly well developed and powerful software environments for data analysis, graphics and other computing needs, such as R/RSudio, (2) massive quantities of data with intrinsic, purpose-built engines (DB2, SQL, etc), and (3) limitless and open information exchange through MOOCs,Social Meidias, etc,  are changing the world fast,diminishing the size of the universe by connecting great minds around the world.

This ”Read me” is accompanied by a script created  to demonstrate the ability to collect, work with, and clean data sets and return a tidy data. The goal is to prepare one tidy data set from two (or more, thereof) sources and can be used for later analysis. The codes will allow submission of a tidy data set . A code book that describes the variables, the data, and any transformations or work that the script performs to clean up the data called CodeBook.md is also included. This repo explains how all of the scripts work and how they are connected.  

Data was collected (and was available online for free) from the accelerometers from the Samsung Galaxy S-II Smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Specifically, data for this project was available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

An R script called run_analysis.R has been created that does the following: 
(1)  Merges the training and the test sets to create one data set.
(2)	Extracts only the measurements on the mean and standard deviation for each measurement. 
(3)	Uses descriptive activity names to name the activities in the data set
(4)	Appropriately labels the data set with descriptive variable names. 
(5)	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Please note that I do not claim originality, as hundreds of others may have already 

Sincerely,

Dawit Aberra
