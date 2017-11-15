## lwages data set ##

# Importing data (customize) #
setwd("/Users/miguel/Dropbox/STAT-2017")
lwage <- read.csv("Data/lwages.csv")
str(lwage)
N <- nrow(lwage)

# Salary change #
change <- lwage$lwage7 - lwage$lwage0

# Histogram #
hist(change, main="", xlab="Log wages")

# Confidence limits #
lcl <- mean(change) - qt(0.975, df=N-1)*sd(change)/sqrt(N)
ucl <- mean(change) + qt(0.975, df=N-1)*sd(change)/sqrt(N)

# t statistic #
t <- mean(change)/(sd(change)/sqrt(N))
t_alpha <- qt(0.975, df=N-1)

# p-value #
p <- 2*(1 - pt(t, df=N-1))

# Function t.test #
t.test(change)
t.test(lwage$lwage7, lwage$lwage0, paired=T)

# Correlation #
plot(lwage7 ~ lwage0, data=lwage, xlab="Log wages (1980)", ylab="Log wages (1987)", pch=20)
