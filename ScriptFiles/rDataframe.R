# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/6/2018
# Create the data frame.
emp.data <- data.frame(
   emp_id = c (1:5),
   emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
   salary = c(623.3,515.2,611.0,729.0,843.25),

   start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
      "2015-03-27")),
   stringsAsFactors = FALSE
)
# Print the data frame.
print(emp.data)
emp.data$dept <- c("IT","Operations","IT","HR","Finance")

print(emp.data)
# Print the summary.
print(summary(emp.data))


print(names(emp.data))
print(ncol(emp.data))
print(nrow(emp.data))
print(length(emp.data)) # as ncol



