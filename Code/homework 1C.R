## Homework 1C ##

# Importing data (customize) #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/indianbanks.csv',
  stringsAsFactors=FALSE)
str(df)
head(df)
summary(df)

# A function that calculates returns #
ret = function(x) x[-1]/x[-length(x)] - 1

# Creating a data set of returns #
df_ret = df[-1, 1]
for(i in 2:6) df_ret = data.frame(df_ret, ret(df[,i]), stringsAsFactors=FALSE)
names(df_ret) = c('date', 'axis', 'baroda', 'hdfc', 'icici', 'state')
str(df_ret)

# Correlation matrix #
cor(df_ret[, -1])

# Less decimals #
round(cor(df_ret[, -1]), 2)
