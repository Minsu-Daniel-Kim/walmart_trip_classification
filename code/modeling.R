registerDoMC(cores = 4)

set.seed(3456)
index <- createDataPartition(p = 0.8, y = data$TripType, list = F)
trainData <- data[index, ]
testData <- data[-index, ]

gbmFit <- train(TripType ~ VisitNumber + Weekday + ScanCount + DepartmentDescription , data = trainData, method = "gbm", verbose = F)
svmFit <- train(TripType ~ VisitNumber + Weekday + ScanCount + DepartmentDescription , data = trainData, method = "svmRadial")
