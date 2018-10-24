## bramex data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/bramex.csv')
str(df)
head(df)
tail(df)
summary(df)

# Regression line #
regmod = lm(formula=mex ~ bra, data=df)
names(regmod)
regmod$coefficients
summary(regmod)
summary(regmod)$r.squared

# Correlation analysis #
cor(df$bra, df$mex)
cor(df[, -1])
cov(df[, -1])

# Figure 1 (customize) #
pdf('Figures/fig 1.1.pdf', width=3.25, height=3.5, pointsize=7)
plot(bramex$bra, bramex$mex, main='', xlab='Brazil', ylab='Mexico', pch=20)
dev.off()

# Figure 2 (customize) #
pdf('Figures/fig 1.2.pdf', width=3.25, height=3.5, pointsize=7)
plot(df$bra, df$mex, main='', xlab='Brazil', ylab='Mexico', pch=20)
abline(regmod)
dev.off()
