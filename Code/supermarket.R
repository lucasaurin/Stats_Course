## supermarket data set ##

# Importing data #
df = read.csv('https://raw.githubusercontent.com/mcanela-iese/Stats_Course/master/Data/supermarket.csv')
str(df)

# Correlation analysis #
cor(df[,-1])

# Regression analysis #
fm1 = reuse ~ .
mod1 = lm(formula=fm1, data=df)
summary(mod1)

# Standardized coefficients #
std = function(x) (x-mean(x))/sd(x)
fm2 = std(reuse) ~ type + std(perfo) + std(conv) + std(employee) +
  std(sat)
mod2 = lm(formula=fm2, data=df)
summary(mod2)

# Interaction terms #
fm3 = std(reuse) ~ type + std(perfo) + I(type*std(perfo)) +
  std(conv) + I(type*std(conv)) + std(employee) +
  I(type*std(employee)) + std(sat) + I(type*std(sat))
mod3 = lm(formula=fm3, data=df)
summary(mod3)
