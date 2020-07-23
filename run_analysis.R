#readings the files in the dataset

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
x_test <- read.table("UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
sub_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
sub_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

#merging test and train datasets
library(stringr)
library(dplyr)
combo<-bind_rows(bind_cols(x_test,y_test,sub_test),
                 bind_cols(x_train,y_train,sub_train))

#naming the merged dataset
names(combo) <- as.vector(features[,2]) 
names(combo)[c(562,563)]<-c("activity","subjectid")

#extracting the columns with the mean and std features, activities and subjectid
namelist <- names(combo)
meanstd <- grep(".*mean()|std()",namelist, value = TRUE)
combo1<- select(combo, meanstd,activity,subjectid)

#renaming the variables
nam<- gsub("-","",tolower(names(combo1)))
nam <- gsub("\\()","",nam)
names(combo1)<-nam

#replacing the activity ids with their labels
combo1$activity<- as.numeric(combo1$activity)
for(i in 1:dim(combo1)[1]){
    for(j in 1:dim(activity_labels)[1]){
       if(combo1$activity[i]==activity_labels[j,1]){
           combo1$activity[i]<-activity_labels[j,2]
       } 
    }
}

#grouping the data by activity and subject id respectively
combo2 <- group_by(combo1,activity,subjectid)

#summarizing the dataset with the average of each variable
summary <- summarise_all(combo2,mean,na.rm=TRUE)
tidyset <- as.data.frame(summary)
