## Computer session (2) ##

# Generate a random vector #
x=runif(100)

# Pack elements of the vector as a matrix #
A = matrix(x, nr=10) # By default R creates matrix by Column, default is byrow=FALSE

# Transpose (filling by row) #
matrix(A, nr=10, byrow=TRUE)
t(A)

# Rounding to three digits #
round(A,3)

# Subsetting (rows 1 to 3 and columns 2 to 4) #
A[1:3,2:4]

# Diagonal vector #
diag(A) #Diagonal vector of the matrix A

# Determinant #
det(A)

# Inverse matrix #
solve(A)

# Product of matrices # 
A %*% solve(A) 

# Eigenvalues and eigenvectors #
eigen(A)

# Functions #
f = function(x) 1/(1 + x^2)
f(1)

# Vectorized function #
f(1:10)

# Definite integrals #
integrate(f, lower=0, upper=1)
pi/4
