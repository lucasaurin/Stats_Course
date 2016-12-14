## Exercise 17.B ##

# First simulation #
f <- function(i) {
  x <- rnorm(10, mean=2, sd=1)
  epsilon <- rnorm(10, mean=0, sd=0.2)
  y <- 3 + x + epsilon
  b <- lm(y ~ x)$coefficients
  return(b)
}
B <- f(1)
for(i in 2:1000) B <- rbind(B, f(i))
cor(B[,1], B[,2])

# Second simulation #
f <- function(i) {
  x <- rnorm(10, mean=0, sd=1)
  epsilon <- rnorm(10, mean=0, sd=0.2)
  y <- 3 + x + epsilon
  b <- lm(y ~ x)$coefficients
  return(b)
}
B <- f(1)
for(i in 2:1000) B <- rbind(B, f(i))
cor(B[,1], B[,2])
