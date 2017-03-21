# Read in data after downloading and unzipping it
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="./UCI_HAR_Dataset/Data.zip", method="curl")
  unzip(zipfile="./UCI_HAR_Dataset/Data.zip", exdir="./UCI_HAR_Dataset")
  data_path <- file.path("./UCI_HAR_Dataset", "UCI HAR Dataset")
  x_test  <- read.table(file.path(data_path, "test", "X_test.txt"), header = FALSE)
  x_train <- read.table(file.path(data_path, "train", "X_train.txt"), header = FALSE)
  y_test  <- read.table(file.path(data_path, "test", "Y_test.txt"), header = FALSE)
  y_train <- read.table(file.path(data_path, "train", "Y_train.txt"), header = FALSE)
  sub_test  <- read.table(file.path(data_path, "test", "subject_test.txt"), header = FALSE)
  sub_train <- read.table(file.path(data_path, "train", "subject_train.txt"), header = FALSE)

# Merge test & train datasets
  feature_x <- rbind(x_test, x_train)
  activity_y <- rbind(y_test, y_train)
  subject_sub <- rbind(sub_test, sub_train)

# Append column names
  feature_head <- read.table(file.path(data_path, "features.txt"), header = FALSE)
  names(feature_x) <- feature_head$V2
  names(activity_y) <- c("activity")
  names(subject_sub) <- c("subject")

# Join all datasets into a df
  sub_actv <- cbind(subject_sub, activity_y)
  joined <- cbind(sub_actv, feature_x)

# Extract only mean & sd variables
  mean_sd_head <- feature_head$V2[grep("mean\\(\\)|std\\(\\)", feature_head$V2)]
  new_header <- c("subject", "activity", as.character(mean_sd_head))
  subset_joined <- subset(joined, select=new_header)

# Rename activities and features
  # Activities
    subset_joined$activity <- as.character(subset_joined$activity)
    subset_joined$activity[subset_joined$activity == "1"] <- "WALKING"
    subset_joined$activity[subset_joined$activity == "2"] <- "WALKING_UPSTAIRS"
    subset_joined$activity[subset_joined$activity == "3"] <- "WALKING_DOWNSTAIRS"
    subset_joined$activity[subset_joined$activity == "4"] <- "SITTING"
    subset_joined$activity[subset_joined$activity == "5"] <- "STANDING"
    subset_joined$activity[subset_joined$activity == "6"] <- "LAYING"
    subset_joined$activity <- as.factor(subset_joined$activity)
  # Features
    names(subset_joined) <- gsub("^t", "time", names(subset_joined))
    names(subset_joined) <- gsub("^f", "frequency", names(subset_joined))
    names(subset_joined) <- gsub("Acc", "Accelerometer", names(subset_joined))
    names(subset_joined) <- gsub("Gyro", "Gyroscope", names(subset_joined))
    names(subset_joined) <- gsub("Mag", "Magnitude", names(subset_joined))
    names(subset_joined) <- gsub("BodyBody", "Body", names(subset_joined))

# Create final dataset with average for each variable by activity & subject
  library(plyr);
  subset_joined$subject <- as.factor(subset_joined$subject)
  final_data <- aggregate(. ~subject + activity, subset_joined, mean)
  final_data <- final_data[order(final_data$subject, final_data$activity),]
  write.table(final_data, file.path(data_path, "final_data.txt"), sep = ",", row.name=FALSE)