
# number of trip based on Weekday
ggplot(data, aes(x = Weekday)) + geom_bar()

# number of trip based on department
ggplot(data, aes(x = DepartmentDescription, fill = DepartmentDescription)) + geom_bar()

# number of returns based on Weekday
ggplot(numOfReturns, aes(x = Weekday)) + geom_bar()

# distribution of ScanCount
ggplot(data, aes(x = ScanCount)) + geom_bar(binwidth = 1)

# distribution of total ScanCount by customer
ggplot(g_userScanCount, aes(x = TotalScanCount)) + geom_bar(binwidth = 1)
ggplot(g_userScanCount, aes(x = Weekday, y = TotalScanCount)) + geom_boxplot()


# Top 10% customer pattern
ggplot(top10, aes(x = Weekday)) + geom_bar()
ggplot(top10, aes(x = DepartmentDescription, fill = DepartmentDescription)) + geom_bar()

# Top 20% customer pattern
ggplot(top20, aes(x = Weekday)) + geom_bar()
ggplot(top20, aes(x = DepartmentDescription, fill = DepartmentDescription)) + geom_bar()
