# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/3/2018
single.vector <-  c(1)
multi.vector <- c(1,5,10,25)
print(single.vector)
print(multi.vector)

# Creating a sequence from 5 to 13.
v <- 5:13
print(v)

# Create vector with elements from 5 to 9 incrementing by 0.4.
print(seq(5, 9, by = 0.4))

# Create two vectors.
v1 <- c(3,8,4,5,0,11,9,8,9)
#v2 <- c(4,11,0,8,1,2)
v2 <-  c(4,10,4)
print(v1+v2)
# length of a vector

v <- c(3,8,4,5,0,11, -9, 304)

# Sort the elements of the vector.
sort.result <- sort(v)
print(sort.result)
print(typeof(v))
# Sort the elements in the reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

# Sorting character vectors.
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)
print(sort.result)

print(typeof(v))

# Sorting character vectors in reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

print(length(v))


x <- c(1, 5, 4, 9)
y <- x[c(TRUE, FALSE, FALSE, TRUE)]
print(y)
print(x[x < 5] )

x[2] <- 0        # modify 2nd element
x[x<1] <- 5;
print(x)


v <- charToRaw("Hello")
print(v)
print(class(v))
print(typeof(v))

print(is.vector(v))
