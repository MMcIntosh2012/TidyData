 #TIDY DATA
MMcIntosh2012 for Getting and Cleaning Data Course in Coursera, April 2014
##Data Transformation
First, a merged dataset combines the test and training dataset of which columns are subject, labels and columns containing measurements on mean and standard deviation for each measurement. An additional Descriptive.Labels column details six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) provides more information about the activites performed based on information of Labels column. Finally, a new dataset contains the average of each variable (i.e. mean and standard deviation of each measurement) for each person and for each activity.

More specifically, the steps are as followed:
1. Getting Training dataset by combining data from y_train.txt, subject_train.txt and x_train.txt
2. Getting Test dataset by combining data from y_test.txt, subject_test.txt and x_test.txt
3. Create merged_df by combining the Training dataset and Test dataset
4. Rename colum names for dataset merged_df from features.txt
5. Create a vector of column indexes of mean and standard deviation measurements
6. Create a new dataset with subject, labels and columns which indexes are in the above vector
7. Uses descriptive activity data frame by reading the "activity_labels.txt" to name the activities in the data set
8. Add the Descriptive.Labels column to label the data set with descriptive activity names based on the label column
9. Move Descriptive.Labels column to the third column, and moved other column except the 1st and 2nd one by 1 column
10. Getting the mean for each measurement for each subject and each label activity
11. Write dataset to a .text file

##Variables
Variables contains the mean and standard deviation variables from the variables listed in "features.txt" (Human Activity Recognition Using Smartphones Dataset Version 1.0)
