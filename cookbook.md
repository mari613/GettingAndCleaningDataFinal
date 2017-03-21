# Data source
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Clean-up steps
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

# Data description & Feature Selection 
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
* Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
* Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
* These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


# Categorical variables in final_data.txt
* `subject` test subject's identifier (30 subjects in total)
* `activity` type of action taking place during accelerometer data collection (activities include LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, and WALKING_UPSTAIRS)

# Means of measurement variables in final_data.txt taken from data as described in Feature Selection section above
* `timeGravityAccelerometer-std()-Y` 
* `timeGravityAccelerometer-std()-Z` 
* `timeBodyAccelerometerJerk-mean()-X` 
* `timeBodyAccelerometerJerk-mean()-Y` 
* `timeBodyAccelerometerJerk-mean()-Z` 
* `timeBodyAccelerometerJerk-std()-X` 
* `timeBodyAccelerometerJerk-std()-Y` 
* `timeBodyAccelerometerJerk-std()-Z` 
* `timeBodyGyroscope-mean()-X` 
* `timeBodyGyroscope-mean()-Y` 
* `timeBodyGyroscope-mean()-Z` 
* `timeBodyGyroscope-std()-X` 
* `timeBodyGyroscope-std()-Y` 
* `timeBodyGyroscope-std()-Z` 
* `timeBodyGyroscopeJerk-mean()-X` 
* `timeBodyGyroscopeJerk-mean()-Y` 
* `timeBodyGyroscopeJerk-mean()-Z` 
* `timeBodyGyroscopeJerk-std()-X` 
* `timeBodyGyroscopeJerk-std()-Y` 
* `timeBodyGyroscopeJerk-std()-Z` 
* `timeBodyAccelerometerMagnitude-mean()` 
* `timeBodyAccelerometerMagnitude-std()` 
* `timeGravityAccelerometerMagnitude-mean()` 
* `timeGravityAccelerometerMagnitude-std()` 
* `timeBodyAccelerometerJerkMagnitude-mean()` 
* `timeBodyAccelerometerJerkMagnitude-std()` 
* `timeBodyGyroscopeMagnitude-mean()` 
* `timeBodyGyroscopeMagnitude-std()` 
* `timeBodyGyroscopeJerkMagnitude-mean()` 
* `timeBodyGyroscopeJerkMagnitude-std()` 
* `frequencyBodyAccelerometer-mean()-X` 
* `frequencyBodyAccelerometer-mean()-Y` 
* `frequencyBodyAccelerometer-mean()-Z` 
* `frequencyBodyAccelerometer-std()-X` 
* `frequencyBodyAccelerometer-std()-Y` 
* `frequencyBodyAccelerometer-std()-Z` 
* `frequencyBodyAccelerometerJerk-mean()-X` 
* `frequencyBodyAccelerometerJerk-mean()-Y` 
* `frequencyBodyAccelerometerJerk-mean()-Z` 
* `frequencyBodyAccelerometerJerk-std()-X` 
* `frequencyBodyAccelerometerJerk-std()-Y` 
* `frequencyBodyAccelerometerJerk-std()-Z` 
* `frequencyBodyGyroscope-mean()-X` 
* `frequencyBodyGyroscope-mean()-Y` 
* `frequencyBodyGyroscope-mean()-Z` 
* `frequencyBodyGyroscope-std()-X` 
* `frequencyBodyGyroscope-std()-Y` 
* `frequencyBodyGyroscope-std()-Z` 
* `frequencyBodyAccelerometerMagnitude-mean()` 
* `frequencyBodyAccelerometerMagnitude-std()` 
* `frequencyBodyAccelerometerJerkMagnitude-mean()` 
* `frequencyBodyAccelerometerJerkMagnitude-std()` 
* `frequencyBodyGyroscopeMagnitude-mean()` 
* `frequencyBodyGyroscopeMagnitude-std()` 
* `frequencyBodyGyroscopeJerkMagnitude-mean()` 
* `frequencyBodyGyroscopeJerkMagnitude-std()`
