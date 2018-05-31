# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 5/31/2018
# Load the package required to read XML files.
library("XML")
# Also load the other required package.
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\readxml.xml")

# Print the result.
print(result)

# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)

# Print the result.
print(rootnode[1])

# Get the first element of the first node.
print(rootnode[[1]][[1]])

# Convert the input xml file to a data frame.
xmldataframe <- xmlToDataFrame(result)
print(xmldataframe)