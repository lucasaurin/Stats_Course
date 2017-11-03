## Homework 2B ##

# Importing data (customize) #
setwd("/Users/miguel/Dropbox/STAT-2017")
indian <- read.csv("Data/indianbanks.csv", stringsAsFactors=F)
str(indian)
head(indian)
summary(indian)

# A function that calculates returns #
ret <- function(x) x[-1]/x[-length(x)] - 1

# Creating a data set of returns #
ret_indian <- ret(indian[, 2])
for(i in 3:6) ret_indian <- data.frame(ret_indian, ret(indian[,i]))
names(ret_indian) <- c("axis", "baroda", "hdfc", "icici", "state")

# Correlation matrix
cor(ret_indian)

# Less decimals #
round(cor(ret_indian), 3)
