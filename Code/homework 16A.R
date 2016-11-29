## STAT-16 - Homework A ##

# Generating F ratio samples #
F.ratio <- NULL
for(i in 1:250) F.ratio[i] <- var(rnorm(5))/var(rnorm(5, mean=1))

# Plotting histogram #
hist(F.ratio, breaks=20, freq=F, main="Exercise 16A", xlab="F ratio")
x <- seq(0.01, max(F.ratio), by=0.01)
y <- df(x, df1=4, df2=4)
lines(y ~ x, type="l")

# Better presentation #
qf(0.975, df1=4, df2=4)
hist(F.ratio[F.ratio<10], breaks=20, freq=F, main="Exercise 16A", xlab="F ratio")
x <- seq(0.01, 10, by=0.01)
y <- df(x, df1=4, df2=4)
lines(y ~ x, type="l")

# Alternative approach # 
hist(F.ratio, breaks=20, freq=F, main="Exercise 16A", xlab="F ratio")
curve(df(x, df1=4, df2=4), lty = 2, lwd = 2, add = TRUE)

