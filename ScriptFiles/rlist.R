# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/4/2018
# values.
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
#print(list_data)
#print(length(list_data))


# Give names to the elements in the list.
names(list_data) <- c("1st", "2nd", "Avector", "bool","num", "num2")

# Access the first element of the list.
print(list_data[1])

# Access the list element using the name of the element.
print(list_data$Avector)

# Add element at the end of the list.
list_data[7] <- "New element"
print(list_data[7])

str(list_data)


# Create lists.
list1 <- list(1:5)
print(list1)

list2 <-list(10:14)
print(list2)


x <- list("a" = 2.5, "b" = TRUE, "c" = 1:3)
print(x$c[1])


x <- list(2.5,TRUE,1:3)
print(x)
print(x[[2]])