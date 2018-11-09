## amzn data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/amzn.csv')
str(df)
head(df)

# Calculating returns #
returns = df$open[-1]/df$open[-length(df$open)] - 1

# Sample stats #
library(e1071)
mean(returns)
sd(returns)
skewness(returns)
kurtosis(returns)

# Figure 5.6 #
pdf('Figures/fig 5.6.pdf', width=6.25, height=3.5, pointsize=7)
par(mfrow=c(1,2))
hist(returns, main='', xlab='Daily returns', ylab='Proportion',
  breaks=15)
qqnorm(returns, main='', xlab='Standard normal quantiles',
  ylab='Daily returns', pch='.')
qqline(returns)
dev.off()

# Standard errors #
se.skewness = sqrt(6/length(returns))
se.kurtosis = sqrt(24/length(returns))
skewness(returns)/se.skewness
kurtosis(returns)/se.kurtosis

# Jarque-Bera statistic #
JB = (length(returns)/6) * (skewness(returns)^2 + kurtosis(returns)^2/4)
