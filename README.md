###README for transforming the UCI HAR Dataset into tidy data###

The goal of the script `run_analysis.R` is to transform the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) into tidy data where     
1. the names of the columns are human readable,   
2. each column contains one variable, and    
3. each observation of those variables are in a different row.

This is achieved by running the script `run_analysis.R` in R.  In order to do this, the folder 'UCI HAR Dataset' must be downloaded by clicking on the UCI HAR Dataset.zip link [here](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/). The zip file needs to be unpacked and the 'UCI Har Dataset' folder needs to be placed in the working directory along with `run_analysis.R`.

`run_analysis.R` works in the following way:

1. Reads in the training and testing data sets and their row identifiers (subject ID and activity number) from 'UCI HAR Dataset'
2. Column binds the training and testing sets with their respective row identifiers, and then row binds the training and test sets together into one 10299x563 data frame called `total_data`.  Each row represents measurements on data from a subject while doing an activity.
3. Renames the columns with the labels from `features.txt` and replaces the activity numbers with their respective activity labels from `activity_labels.txt`.
4. Extracts the mean and standard deviation data into the 10299x68 `sub_total_data` data frame using the `grep` function on the column names.  Since this function includes the columns relating to mean frequency and angle, we then removed those columns.  The angle data results from calculating the angle of mean data and some other data which we did not take to be the mean of the initial signal measurements and the meanFreq data is the mean of frequency components of the initial signal measurements, not the mean of the measurements themselves.
5. Renames the columns to more descriptive names. For example, "tBodyAcc-mean()-X" was changed to "timeBodyAccelerationMeanX" in order to make the name more intuitive.  The variable name meanings are described in the included `CodeBook.md` file.
6. Uses the `aggregate` function to subset the data into variables from a single subject and a single activity and take the mean of the data remaining in each variable column.  This results in a tidy 180x68 data frame called `final_data` where column 1 is the subject ID number, column 2 is the activity performed by the subject, and columns 3-68 are the column means of each subsetted column of `sub_total_data`.  Refer to this [thread on tidy data](https://class.coursera.org/getdata-031/forum/thread?thread_id=113) for why this data frame conforms to tidy data principles.
7. Writes the data frame `final_data` to the file `Human_Activity_Averages.txt`.

In order to read in the data file, the R code is:
`data <- read.table("Human_Activity_Averages.txt", header=TRUE)`

To view the data, type:
`View(data)`