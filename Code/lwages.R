## lwages data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/lwages.csv')
str(df)
N = nrow(df)

# Salary change #
change = df$lwage7 - df$lwage0

# Histogram #
hist(change, main='', xlab='Log wages')

# Confidence limits #
lcl = mean(change) - qt(0.975, df=N-1)*sd(change)/sqrt(N)
ucl = mean(change) + qt(0.975, df=N-1)*sd(change)/sqrt(N)

# t statistic #
t = mean(change)/(sd(change)/sqrt(N))
t
t_alpha = qt(0.975, df=N-1)
t_alpha

# p-value #
p = 2*(1 - pt(t, df=N-1))
p

# Function t.test #
t.test(change)
t.test(lwage$lwage7, lwage$lwage0, paired=TRUE)

# Correlation #
plot(lwage7 ~ lwage0, data=lwage, xlab='Log wages (1980)',
  ylab='Log wages (1987)', pch=20)

# Wilcoxon signed rank test #
wilcox.test(df$lwage7, df$lwage0, paired=TRUE)
