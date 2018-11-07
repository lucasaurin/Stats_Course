## Homework 3A ##

# Sampling the uniform distribution #
u1 = runif(10^5)
u2 = runif(10^5)

# Ratio #
x = u1/u2

# Histogram #
hist(x)

# Truncation #
hist(x[x < 100])
hist(x[x < 10])
hist(x[x < 5])
