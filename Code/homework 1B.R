## Homework 1B ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/roeroa.csv',
  stringsAsFactors=F)
str(df)
head(df)
summary(df[, -1])

# Regression line #
mod1 = lm(formula = roa ~ roe, data = df)
summary(mod1)

# Plotting #
plot(formula = roa ~ roe, data = df, main = 'Regression line',
  xlab = 'ROE', ylab = 'ROA', pch = 20)
abline(mod1)

# Trimming data #
trim = df$roe < 100 & df$roa < 35
mod2 = lm(formula = roa ~ roe, data = df[trim, ])
summary(mod2)

# Plotting #
plot(formula = roa ~ roe, data = df[trim, ],
  main= 'Regression line', xlab = 'ROE', ylab = 'ROA', pch = 20)
abline(mod2)
