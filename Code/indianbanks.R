## indianbanks data set ##

# Setting working directory (customize) #
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")

# Importing data #
indian <- read.csv("Data/indianbanks.csv", stringsAsFactors=F)
str(indian)
head(indian)
summary(indian)

# A function that calculates returns #
ret <- function(x) x[-1]/x[-length(x)] - 1

# Creating a data set of returns #
ret.indian = ret(indian[, 2])
for(i in 3:6) ret.indian <- data.frame(ret.indian, ret(indian[,i]))
names(ret.indian) <- c("axis", "baroda", "hdfc", "icici", "state")

# Correlation matrix
cor(ret.indian)
