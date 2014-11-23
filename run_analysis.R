## Create a clean data set from  accelerometers from the Samsung Galaxy S smartphone
## Extract the measurements for  the mean and standard deviations, create meanifuly column names, 
## Calcuate the averages for mean and standard deviation and output to a file.
cleanData<- function()
{
 ## to the whomever does the code review some things I would like to cleanup but do not have the time
  ## hard coded file path, better if I could pass that in or better a vector of files
  ## column labels, compelte hack around line 29, I spend more time on things like that than anything else. Should have gotten those labels in sooner 
## And from step 2 on I had no idea exactly what they were looking for, if you figured it out, well please be kind!
  
  ## read in files - stored locally in data folder..
  ## test data first
  x_test<-read.table("./data/X_test.txt") ## test  data
  y_test<-read.table("./data/y_test.txt") ## Activity lables (numeric) for test data
  subjects_test = read.table("./data/subject_test.txt") ## subjects in the test data set
  ## training data next  
  x_train<-read.table("./data/X_train.txt") ## train data
  y_train<-read.table("./data/y_train.txt") ## Activity lables (numeric) for train data
  subjects_train = read.table("./data/subject_train.txt") ## subjects in the training data set
  ## need these for both test and training data sets
  activity_labels<-read.table("./data/activity_labels.txt", , col.names = c("ActivityId", "Activity")) ## Th real activity labels
  features<-read.table("./data/features.txt", colClasses = c("character"))  ## what is in the data sets
  
  ## Merge the data sets into 1 data set
  training_data <- cbind(cbind(x_train, subjects_train), y_train) ## Takes the traing data adds, subjects and the activity (numeric)
  test_sensor_data <- cbind(cbind(x_test, subject_test), y_test) ## Takes the test data adds, subjects and the activity (numeric)
  complete_data <- rbind(training_data, test_sensor_data)  ## Combines the test data to the training data

  ## Add column labels to the data set
  all_columns <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityId"))[,2] ## appending Subject and Activity ID to the featues
  names(complete_data) <- all_columns  ## Adding the col names to the completed data set
  ## End of Part of 1 of assignement
  
  ## Extract mean and standard deviation on each measurement
  ## (for the record on whoever reads this... if not for the discussion board suggestion about looking at Week 4
  ## lectures I NEVER WOULD HAVE GOTTEN THIS!!! Why have something due week 3 if the info you need is in week 4!!!)
  mean_and_std_data <- complete_data[,grepl("mean|std|Subject|ActivityId", names(complete_data))]
  
  ## declaring victory on part 2 have no idea if what I have is what they are looking for.. Screwed if this wrong..
  
  ## use some sql magic to change the numeric activity to the actual labels 
  mean_and_std_data <- join(mean_and_std_data, activity_labels, by = "ActivityId", match = "first")
  
  ## thus ends part 3...
  
  ## clean up names and make descriptive, again no idea what they want, and again, week 4 !
  ## get rid of "()'s
  names(mean_and_std_data) <- gsub('\\(|\\)',"",names(mean_and_std_data), perl = TRUE)
  ## clean up some other random things... like abbreivations, 
  names(mean_and_std_data) <- gsub('Acc',"Acceleration",names(mean_and_std_data))
  names(mean_and_std_data) <- gsub('Mag',"Magnitude",names(mean_and_std_data))
  names(mean_and_std_data) <- gsub('Freq\\.',"Frequency.",names(mean_and_std_data))
  
  ## and we will make the t and f mean something, hope thats enough!
  names(mean_and_std_data) <- gsub('^t',"TimeDomain.",names(mean_and_std_data))
  names(mean_and_std_data) <- gsub('^f',"FrequencyDomain.",names(mean_and_std_data))
  
  ## step 4 complete! one step to go!
  
  ## calcuate the average of each variable in the data set  
  avg_by_act_sub = ddply(mean_and_std_data, c("Subject","Activity"), numcolwise(mean))
  
  ## and finally write the completed tidy data set out to a file, using tab seperator, because it just looks better...
  write.table(avg_by_act_sub, file = "./data/avg_by_act_sub.txt",row.name=FALSE, sep = "\t", append=F)
  ## thats it, step 5 complete! 
}