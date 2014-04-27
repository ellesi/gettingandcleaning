# Load necessary packages
require(reshape2)

### Load data into R

# First the feature names
features <- read.table("features.txt")
# Define a character vector. Colums defined as NULL won't be read in.
colums_to_read <- rep("NULL",times=nrow(features))
# We will need only the measurements on the mean and standard deviation for each measurement. 
features <- features[grep("mean|std", features$V2, perl=TRUE), ]
# Update the colums_to be read vetor with class numeric for the colums we need.
colums_to_read[features$V1] <- "numeric"

tidy_data <- data.frame()
# Loop over train and test datasets
for (set in c("train", "test")) {
  # Activity labels
  alabels <- read.table(paste(set,"/y_",set,".txt",sep=""))
  activity <- factor(alabels$V1, labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
  
  # Each row identifies the subject who performed the activity for each window sample
  subject <- read.table(paste(set,"/subject_",set,".txt",sep=""))
  colnames(subject) <- "subject"
  
  # Read the measurement data
  data <- read.table(paste(set,"/X_",set,".txt",sep=""),colClasses=colums_to_read)
  colnames(data) <- features$V2
  
  # Bind info about subject, activity and data into single data frame
  temp_data <- cbind(subject,activity,data) 
  temp_data <-  melt(temp_data, id = c("subject", "activity"))

  # Build the tidy data set: the average of each variable for each activity and each subject
  tidy_data <- rbind(tidy_data, dcast(temp_data, subject+activity~variable,mean))
}

# Sort the data
tidy_data <- tidy_data[order(tidy_data[,1]), ]

# Write the data to file
write.table(tidy_data, file = "tidy_data.txt")
