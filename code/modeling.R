registerDoMC(cores = 5)

set.seed(3456)
index <- createDataPartition(p = 0.8, y = data$TripType, list = F)
trainData <- data[index, ]
testData <- data[-index, ]

gbmFit <- train(TripType ~ . , data = trainData, method = "gbm", verbose = F)
