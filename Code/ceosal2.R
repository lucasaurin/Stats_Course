## ceosal2 data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/ceosal2.csv')
str(df)

# Histograms #
par(mfrow=c(1,2))
hist(df$salary, main='', xlab='CEO salary')
hist(df$mktval, main='', xlab='Market value')

# Correlation matrix #
cor(data.frame(log(df$salary), log(df$sales), log(df$mktval), df$profit))

# Regression line #
fm1 = log(salary) ~ log(mktval)
mod1 = lm(formula=fm1, data=df)
summary(mod1)

# Linear regression (one control) #
fm2 = log(salary) ~ log(sales) + log(mktval)
mod2 = lm(formula=fm2, data=df)
summary(mod2)

# Linear regression (two controls) #
fm3 = log(salary) ~ log(sales) + log(mktval) + profits
mod3 = lm(formula=fm3, data=df)
summary(mod3)
