# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/6/2018
# Create a vector as input.
data <- c("AP","TS","TN","AP","DE","PU","TN","TS","KT")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))

# Apply the factor function with required order of the level.
new_order_data <- factor(factor_data,levels = c("TN" ,"TS","PU","KT","DE","AP"))
print(new_order_data)

# with gl()

v <- gl(2, 2, labels = c("Tampa", "Seattle","Boston"))
print(v)

data <- c("single", "married", "separated", "divorced",  "widowed")
factor.cat <- factor(data)
print(factor.cat)
print(class(factor.cat))


