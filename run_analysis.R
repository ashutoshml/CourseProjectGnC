## Set Working Directory here : 
##setwd(<path till extracted folder{extracted folder name not included here}>)

##Reading Raw Data here
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
features <- read.table("UCI HAR Dataset\\features.txt")
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt")

##Providing sensible column names here
names(features) <- c("featureNo","featureName")
names(X_train) <- features$featureName
names(X_test) <- features$featureName
names(y_train) <- "Label"
names(y_test) <- "Label"
names(subject_test) <- "Subject"
names(subject_train) <- "Subject"
names(activity_labels) <- c("labelNo","labelName")

## Merging test and training sets here
df <- rbind(cbind(y_test,subject_test,X_test),cbind(y_train,subject_train,X_train))

## Extracting mean and std
dfmean <- df[grep("mean()",names(df),fixed = TRUE)]
dfstd <- df[grep("std()",names(df),fixed = TRUE)]

## Combining mean and std df into one tidy df
dfboth <- data.frame(Label = df$Label,Subject = df$Subject, dfmean,dfstd)

## Using Descriptive activity names
for(n in 1:6){
  df$Label[which(df$Label == n)] <- as.character(activity_labels$labelName[n])
  dfboth$Label[which(dfboth$Label == n)] <- as.character(activity_labels$labelName[n])
}

## Aggragating tidy data based on activity and subject
by1 <- dfboth$Label
by2 <- dfboth$Subject
tidydata <- aggregate(dfboth[,-c(1,2)],by = list(Label = by1,Subject = by2),FUN = "mean")

write.table(tidydata, file = "tidydata.txt",row.names = FALSE)