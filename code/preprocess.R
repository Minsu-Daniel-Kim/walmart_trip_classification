
data <- read.csv("rawdata/train.csv", stringsAsFactors = F)
data <- tbl_df(data)
data$Weekday <- as.factor(data$Weekday)
data$DepartmentDescription <- as.factor(data$DepartmentDescription)
data$FinelineNumber <- as.factor(data$FinelineNumber)
data$TripType <- as.factor(data$TripType)
data$Weekday = factor(data$Weekday,levels(data$Weekday)[c(2, 6, 7, 5, 1, 3, 4)])


# group by customer
g_user <- group_by(data, VisitNumber)
g_userScanCount <- g_user %>% summarize(TotalScanCount = sum(ScanCount), NscanCount = n(), Nkinds = n_distinct(DepartmentDescription), Weekday = first(Weekday), Dept1 = mode(DepartmentDescription, 1), Dept2 = mode(DepartmentDescription, 2))

# group by Weekday
g_weekday <- group_by(data, Weekday)
g_userScanCount_weekday <- group_by(g_userScanCount, Weekday)
summarize(g_userScanCount_weekday, )
summarize(g_weekday, n_distinct(VisitNumber))
