Codebook for Course Assignment -  Getting and Cleaning Data
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
## CODE BOOK
The complete list of variables of each feature vector is available in 'features.txt'

* Orgiginal data set was downloaded from this link:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* From that data set the following files were copied to a common locaton ./data. These files were y_train.txt, x_train.txt, y_test.txt, x_test.txt subject_train.txt, subject_test.text, features.txt, activity_labels.txt
* The file run_analysis.R descibes the steps taken to change the data to a tidy data set with the following column names.

Varables
* Subject
* Activity
* ActivityId
* TimeDomain.BodyAcceleration-mean-X
* TimeDomain.BodyAcceleration-mean-Y
* TimeDomain.BodyAcceleration-mean-Z
* TimeDomain.BodyAcceleration-std-X
* TimeDomain.BodyAcceleration-std-Y
* TimeDomain.BodyAcceleration-std-Z
* TimeDomain.GravityAcceleration-mean-X
* TimeDomain.GravityAcceleration-mean-Y
* TimeDomain.GravityAcceleration-mean-Z
* TimeDomain.GravityAcceleration-std-X
* TimeDomain.GravityAcceleration-std-Y
* TimeDomain.GravityAcceleration-std-Z
* TimeDomain.BodyAccelerationJerk-mean-X
* TimeDomain.BodyAccelerationJerk-mean-Y
* TimeDomain.BodyAccelerationJerk-mean-Z
* TimeDomain.BodyAccelerationJerk-std-X
* TimeDomain.BodyAccelerationJerk-std-Y
* TimeDomain.BodyAccelerationJerk-std-Z
* TimeDomain.BodyGyro-mean-X
* TimeDomain.BodyGyro-mean-Y
* TimeDomain.BodyGyro-mean-Z
* TimeDomain.BodyGyro-std-X
* TimeDomain.BodyGyro-std-Y
* TimeDomain.BodyGyro-std-Z
* TimeDomain.BodyGyroJerk-mean-X
* TimeDomain.BodyGyroJerk-mean-Y
* TimeDomain.BodyGyroJerk-mean-Z
* TimeDomain.BodyGyroJerk-std-X
* TimeDomain.BodyGyroJerk-std-Y
* TimeDomain.BodyGyroJerk-std-Z
* TimeDomain.BodyAccelerationMagnitude-mean
* TimeDomain.BodyAccelerationMagnitude-std
* TimeDomain.GravityAccelerationMagnitude-mean
* TimeDomain.GravityAccelerationMagnitude-std
* TimeDomain.BodyAccelerationJerkMagnitude-mean
* TimeDomain.BodyAccelerationJerkMagnitude-std
* TimeDomain.BodyGyroMagnitude-mean
* TimeDomain.BodyGyroMagnitude-std
* TimeDomain.BodyGyroJerkMagnitude-mean
* TimeDomain.BodyGyroJerkMagnitude-std
* FrequencyDomain.BodyAcceleration-mean-X
* FrequencyDomain.BodyAcceleration-mean-Y
* FrequencyDomain.BodyAcceleration-mean-Z
* FrequencyDomain.BodyAcceleration-std-X
* FrequencyDomain.BodyAcceleration-std-Y
* FrequencyDomain.BodyAcceleration-std-Z
* FrequencyDomain.BodyAcceleration-meanFreq-X
* FrequencyDomain.BodyAcceleration-meanFreq-Y
* FrequencyDomain.BodyAcceleration-meanFreq-Z
* FrequencyDomain.BodyAccelerationJerk-mean-X
* FrequencyDomain.BodyAccelerationJerk-mean-Y
* FrequencyDomain.BodyAccelerationJerk-mean-Z
* FrequencyDomain.BodyAccelerationJerk-std-X
* FrequencyDomain.BodyAccelerationJerk-std-Y
* FrequencyDomain.BodyAccelerationJerk-std-Z
* FrequencyDomain.BodyAccelerationJerk-meanFreq-X
* FrequencyDomain.BodyAccelerationJerk-meanFreq-Y
* FrequencyDomain.BodyAccelerationJerk-meanFreq-Z
* FrequencyDomain.BodyGyro-mean-X
* FrequencyDomain.BodyGyro-mean-Y
* FrequencyDomain.BodyGyro-mean-Z
* FrequencyDomain.BodyGyro-std-X
* FrequencyDomain.BodyGyro-std-Y
* FrequencyDomain.BodyGyro-std-Z
* FrequencyDomain.BodyGyro-meanFreq-X
* FrequencyDomain.BodyGyro-meanFreq-Y
* FrequencyDomain.BodyGyro-meanFreq-Z
* FrequencyDomain.BodyAccelerationMagnitude-mean
* FrequencyDomain.BodyAccelerationMagnitude-std
* FrequencyDomain.BodyAccelerationMagnitude-meanFreq
* FrequencyDomain.BodyBodyAccelerationJerkMagnitude-mean
* FrequencyDomain.BodyBodyAccelerationJerkMagnitude-std
* FrequencyDomain.BodyBodyAccelerationJerkMagnitude-meanFreq
* FrequencyDomain.BodyBodyGyroMagnitude-mean
* FrequencyDomain.BodyBodyGyroMagnitude-std
* FrequencyDomain.BodyBodyGyroMagnitude-meanFreq
* FrequencyDomain.BodyBodyGyroJerkMagnitude-mean
* FrequencyDomain.BodyBodyGyroJerkMagnitude-std
* FrequencyDomain.BodyBodyGyroJerkMagnitude-meanFreq
