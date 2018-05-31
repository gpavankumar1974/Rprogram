# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 5/31/2018
# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\readJson.json")

# Print the result.
print(result)

print(result$regionCode)