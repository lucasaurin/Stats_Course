## Exercise 20.A ##

# Importing data #
setwd("/Users/miguel/Dropbox/Current jobs/STAT-2016")
df <- read.csv("Data/ceosal2.csv")

# Correlation matrices #
cor(data.frame(log(df$salary), log(df$sales), log(df$mktval), df$profit))
cor(df)

# Linear regression (log scales) #
fm1 <- log(salary) ~ log(sales) + log(mktval)
mod1 <- lm(formula=fm1, data=df)
summary(mod1)

# Linear regression (original scales) #
fm2 <- salary ~ sales + mktval
mod2 <- lm(formula=fm2, data=df)
summary(mod2)

# Distribution of residuals #
par(mfrow=c(1,2))
hist(mod1$residuals, main="", xlab="Residuals (log scales)")
hist(mod2$residuals, main="", xlab="Residuals (original scales)")

## Exercise 20.B ##
1/(1 - summary(lm(log(sales) ~ log(mktval) + profits, data=df))$r.square)
1/(1 - summary(lm(log(mktval) ~ log(sales) + profits, data=df))$r.square)
1/(1 - summary(lm(profits ~ log(sales) + log(mktval), data=df))$r.square)

