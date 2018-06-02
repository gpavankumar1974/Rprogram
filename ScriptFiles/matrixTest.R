# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/1/2018

# Elements are arranged sequentially by row.
M <- matrix(c(3,3.5,3.2,3.6), nrow = 2,ncol=2, byrow = TRUE)
print(M)
print(1/M)
# Inverse
print(solve(M))
print(det(M))

# Access the element at ist row, 2 col
print(M[1,2])

# Access the element at 2nd column and 2nd row
print(M[2,2])

# Access only the  2st row.
print(M[1,])

# Access only the 2nd column.
print(M[,2])
print(M)



# Multiply
X <- matrix(c(1,2,3,4,5,6), nrow = 2,ncol=3, byrow = TRUE)
Y <- matrix(c(7,8,9,10,11,12), nrow = 3,ncol=2, byrow = TRUE)

print(X)
print(Y)

print(X %*% Y)

print(t(X))

# print Multiply

price = matrix(c(3,4,2),nrow=1,ncol=3,byrow=TRUE)
sales = matrix(c(13,9,7,15,8,7,4,6,6,4,0,3), nrow=3,ncol=4,byrow=TRUE)

print(price %*% sales)

#

mat1 = matrix(c(1,2,3),nrow=1,ncol=3,byrow=TRUE)
mat2 = matrix(c(3,1,2,2,1,3,3,2,1), nrow=3,ncol=3,byrow=TRUE)
print(mat1)
print(mat2 )
#matrix Multiiplication
print(mat1 %*% mat2 )
# matrix multiply with second matrix with transpose
print(mat1 %*% t(mat2 ))




