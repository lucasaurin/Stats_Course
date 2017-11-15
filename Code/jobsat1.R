## jobsat1 data set ##

# Importing data #
setwd("/Users/miguel/Dropbox/STAT-2017")
jobsat <- read.csv("Data/jobsat1.csv")
str(jobsat)

# Formula #
fm = sat ~ country

# t test (equal variances) #
df1 <- jobsat[jobsat$country!="SP", ]
t.test(formula=fm, data=df1, var.equal=T)

# t test (alternative) #
t.test(formula=fm, data=df1, var.equal=F)

# Group distributions #
par(mfrow=c(1,2))
hist(jobsat$sat[jobsat$country=="CH"], main="",
 xlab="Job satisfaction (Chile)")
hist(jobsat$sat[jobsat$country=="ME"],
  main="", xlab="Job satisfaction (Mexico)")

