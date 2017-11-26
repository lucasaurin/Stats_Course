## supermarket data set ##

# Reading data (customize) #
super <- read.csv("supermarket.csv")
summary(super)

# Correlation analysis #
cor(super[,-1])

# Regression analysis #
fm1 <- reuse ~ type + perfo + conv + employee + sat
mod1 <- lm(formula=fm1, data=super)
summary(mod1)

# Standardized coefficients #
std = function(x) (x-mean(x))/sd(x)
fm2 <- std(reuse) ~ type + std(perfo) + std(conv) + std(employee) +
  std(sat)
mod2 <- lm(formula=fm2, data=super)
summary(mod2)

# Interaction terms #
fm3 <- std(reuse) ~ type + std(perfo) + I(type*std(perfo)) +
  std(conv) + I(type*std(conv)) + std(employee) +
  I(type*std(employee)) + std(sat) + I(type*std(sat))
mod3 <- lm(formula=fm3, data=super)
summary(mod3)
