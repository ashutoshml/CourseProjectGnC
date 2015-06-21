## CodeBook

#### Variable Description : run_analysis.R
1. X_train : Table containing the given raw training data.
2. y_train : Table containing the activity labels for the raw training data.
3. X_test : Table containing the given raw test data.
4. y_test : Table containing the activity labels for the raw test data.
5. subject_train : Table containing the subjects for the raw training data.
6. subject_test: Table containing the subjects for the raw test data.
7. features: Table containing the features for the data.
8. activity_labels : Table containing the mapping of activity number to activity names.
9. df : Contains the data of the merged training and test sets
10. dfmean: Contains the data of a selected number of columns of df, namely the mean() data. 
  - mean here denotes Average/Mean
11. dfstd: Contains the data of a selected number of columns of df, namely the std() data.
  - std here denotes Standard Deviation
12. dfboth: Combined data frame of dfmean and dfstd


```
names() : function which provides column names to the give table.
Usage: 
names(features) <- c("featureNo","featureName") :- Labels columns of features data table as featureNo and featureName

```

In addition, the data table is labelled properly in the for loop wrt activity.

#### Output
The output is a file "tidydata.txt" which contains 180 obs. and 68 variables for the various means and standard deviations.

Variables : 
1. Label : Contains the activity Name
2. Subject : Contains the subject
3. Other variables: As explained in features_info.txt
