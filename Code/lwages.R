## lwages data set ##

# Importing data #
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")
df = read.csv("Data/lwages.csv")
str(df)
N = nrow(df)

# Salary change #
change <- df$lwage7 - df$lwage0
change_alt <- exp(df$lwage7) - exp(df$lwage0)

# Histograms #
par(mfrow=c(1,2))
hist(change_alt, main="", xlab="Wages")
hist(change, main="", xlab="Log wages")

# Confidence limits #
lcl <- mean(change) - qt(0.975, df=N-1)*sd(change)/sqrt(N)
ucl <- mean(change) + qt(0.975, df=N-1)*sd(change)/sqrt(N)

# t statistic #
t <- mean(change)/(sd(change)/sqrt(N))
t > qt(0.975, df=N-1)

# p-value #
p <- 2*(1 - pt(t, df=N-1))
