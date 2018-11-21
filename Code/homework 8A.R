## Homework 8A ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/lwages.csv')
str(df)

# Paired t.test (log transformed) #
t.test(df$lwage7, df$lwage0, paired=TRUE)

# Paired t.test (raw data) #
t.test(exp(df$lwage7), exp(df$lwage0), paired=TRUE)

# Correlation #
plot(exp(lwage7) ~ exp(lwage0), data=df,
  xlab='Wages (1980)', ylab='Wages (1987)', pch=20)
cor(exp(df$lwage7), exp(df$lwage0))


