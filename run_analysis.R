#Train data frame
setwd("C:/Users/DO TON/Downloads/Getting and Cleaning Data/Peer Assessment/UCI HAR Dataset/train/")
x_train<-read.table("X_train.txt")
y_train<-read.table("y_train.txt")
subject_train<-read.table("subject_train.txt")
df_train<-data.frame(y_train,subject_train,x_train)

#Test data frame
setwd("C:/Users/DO TON/Downloads/Getting and Cleaning Data/Peer Assessment/UCI HAR Dataset/test/")
x_test<-read.table("X_test.txt")
y_test<-read.table("y_test.txt")
subject_test<-read.table("subject_test.txt")
df_test<-data.frame(y_test,subject_test,x_test)

#Merge data set
merged_df<-rbind(df_test,df_train)

#Column name for data set
setwd("C:/Users/DO TON/Downloads/Getting and Cleaning Data/Peer Assessment/UCI HAR Dataset")
features<-read.table("features.txt")
names<-c("Labels","Subject",as.character(features[,2]))

#Rename columns of merged_df
colnames(merged_df)<-names

#Find mean and standard deviation column
mean_vec<-grep("mean()",colnames(merged_df))
std_vec<-grep("std()",colnames(merged_df))
f_vec<-sort(c(mean_vec,std_vec))

#Extracts only the measurements on the mean and standard deviation for each measurement. 
sub_df<-subset(merged_df,select=c(1,2,f_vec))

#Read the Labels
setwd("C:/Users/DO TON/Downloads/Getting and Cleaning Data/Peer Assessment/UCI HAR Dataset")
#getting the label vector
labels<-read.table("activity_labels.txt")
#assign despcriptive labels to labels
sub_df$Descriptive.Labels<-labels[,2][sub_df$Labels]
#move the Descriptive.Labels ahead
sub_df<-sub_df[,c(1,2,82,3:81)]
#getting the mean for each person and for each activity
