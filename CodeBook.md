 a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
#TIDY DATA
##MMcIntosh2012 for Getting and Cleaning Data Course in Coursera, April 2014
##Data Transformation
First, a merged dataset combines the test and training dataset of which columns are subject, labels and columns containing measurements on mean and standard deviation for each measurement. An additional Descriptive.Labels column details six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) provides more information about the activites performed based on information of Labels column. Finally, a new dataset contains the average of each variable (i.e. mean and standard deviation of each measurement) for each person and for each activity.

Variables contains the mean and standard deviation variables from the variables listed in "features.txt" (Human Activity Recognition Using Smartphones Dataset Version 1.0)
