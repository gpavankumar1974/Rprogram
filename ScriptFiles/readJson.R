# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 5/31/2018
# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
#result <- fromJSON(file = "C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\readJson.json")
result <- fromJSON(file = "C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\readJson2.json")
# Print the result.
#print(result)

#print(result$pageInfo)
#print(result$items)
print(result$items[1][1])

# Convert JSON file to a data frame.
#json_data_frame <- as.data.frame(result)

#print(json_data_frame)