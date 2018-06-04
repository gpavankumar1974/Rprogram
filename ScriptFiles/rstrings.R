# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/3/2018
result <- format(23.123456789, digits = 4)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)


# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Extract characters from 5th to 7th position.
result <- substring("Extract", 5, 7)
print(result)

# Format
x <- seq(0.5, 0.55, 0.01)
y <- sprintf("%.2f %%", 100*x)
print(y)


stuff <- c("bread", "cookies")
price <- c(2.1, 4)
print(sprintf("%s costed $ %3.2f ", stuff, price))


