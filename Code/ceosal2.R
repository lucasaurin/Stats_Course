## ceosal2 data set ##

# Importing data (customize) #
df <- read.csv("ceosal2.csv")
str(df)

# Histograms
par(mfrow=c(1,2))
hist(df$salary, main="", xlab="CEO salary")
hist(df$mktval, main="", xlab="Market value")

# Correlation matrix
cor(data.frame(log(df$salary), log(df$sales), log(df$mktval), df$profit))

# Regression line
fm1 <- log(salary) ~ log(mktval)
mod1 <- lm(formula=fm1, data=df)
summary(mod1)

# Linear regression (one control)
fm2 <- log(salary) ~ log(sales) + log(mktval)
mod2 <- lm(formula=fm2, data=df)
summary(mod2)

# Partial correlation (one control)
partial.mod1 <- lm(log(salary) ~ log(sales), data=df)
partial.mod2 <- lm(log(mktval) ~ log(sales), data=df)
cor(partial.mod1$residuals, partial.mod2$residuals)

# Partitioned regression
fm3 <- log(salary) ~ partial.mod2$residuals
mod3 <- lm(formula=fm3, data=df)
summary(mod3)

# Linear regression (two controls)
fm4 <- log(salary) ~ log(sales) + log(mktval) + profits
mod4 <- lm(formula=fm4, data=df)
summary(mod4)
