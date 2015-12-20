
data <- read.csv("rawdata/train.csv", stringsAsFactors = F)
data$Weekday <- as.factor(data$Weekday)
data$DepartmentDescription <- as.factor(data$DepartmentDescription)
data$FinelineNumber <- as.factor(data$FinelineNumber)
data$TripType <- as.factor(data$TripType)
