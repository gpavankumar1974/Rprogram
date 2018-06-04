# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/4/2018

# Elements are arranged sequentially by row.
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)
# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)

# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Add the matrices.
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)

# Subtract the matrices
result <- matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)


print(attributes(matrix1))
print(dim(matrix1))
print(typeof(matrix1))
print(class(matrix1))


m <- cbind(c(1,2,3),c(4,5,6))
print(m)
m <- rbind(c(1,2,3),c(4,5,6))
print(m)


matFromVectors <- c(10,20,30,40,50,60)
dim(matFromVectors) <- c(2,3)
print(matFromVectors)
