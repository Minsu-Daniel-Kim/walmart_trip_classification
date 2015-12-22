# summary of data
summary(data)

# number of trip based on deparment in desc order
sort(table(data$DepartmentDescription), decreasing = T)

# avg scan count per customer
group_by_customer <- group_by(data, VisitNumber)

# number of returns : 14394
numOfReturns <- filter(data, ScanCount == -1)
nrow(numOfReturns)

nrow(table(data$Upc))

# avg of ScanCount : 1.108
mean(data$ScanCount)
summary(data$ScanCount)

which.max(data$ScanCount)
data[478029,]


filter(g_userScanCount, TotalScanCount == 311)

# summary(g_userScanCount)
summary(g_userScanCount)
View(g_userScanCount)

# quantile of g_userScanCount
quantile(g_userScanCount$TotalScanCount, 0.8)

# g_userScanCount TotalScanCount Top 10%
nrow(filter(g_userScanCount, TotalScanCount >= 19))
top10 <- filter(g_userScanCount, TotalScanCount >= 19)
top20 <- filter(g_userScanCount, TotalScanCount >= 12)
# distinct # user
nrow(summarize(g_user, n_distinct(VisitNumber)))

# Views
View(g_user)
View(g_userScanCount)
View(filter(data, VisitNumber == 72439))
View(filter(data, VisitNumber == 142397))
