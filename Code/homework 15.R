## STAT-15 Homework ##

# Importing data (customize) #
lwage <- read.csv("lwages.csv")

# Paired t.test (log transformed) #
t.test(lwage$lwage7, lwage$lwage0, paired=T)

# Paired t.test (raw data) #
t.test(exp(lwage$lwage7), exp(lwage$lwage0), paired=T)

# Correlation #
plot(exp(lwage7) ~ exp(lwage0), data=lwage,
  xlab="Wages (1980)", ylab="Wages (1987)", pch=20)

