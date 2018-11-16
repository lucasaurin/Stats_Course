# STAT-6A - Homework ##

# Function to calculate correlations #
f = function(x) cor(x[1:(length(x)/2)], x[(length(x)/2+1):length(x)])

# Sample size 10 #
M10 = matrix(rexp(20*10^3), ncol=20)
corr10 = apply(M10, 1, f)
hist(corr10)

# Sample size 50 #
M50 = matrix(rexp(100*10^3), ncol=100)
corr50 = apply(M50, 1, f)
hist(corr50)

# Sample size 100 #
M100 = matrix(rexp(200*10^3), ncol=200)
corr100 = apply(M100, 1, f)
hist(corr100)
