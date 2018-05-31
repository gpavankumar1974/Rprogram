# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 5/31/2018
library("XLConnect")

# File
filepath ="C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\"
filename="TestExcel.xlsx"
filefull = paste(filepath,filename, sep = "")
print(filefull)

# Read
loadExcel <- loadWorkbook(filefull, create = FALSE)
dtexcl <- readWorksheet(loadExcel,'sheet2')
#print(dtexcl)
str(dtexcl)

# test where is Current working Directory
#print(getwd())

#creating an Excel workbook. Both .xls and .xlsx file formats can be used.
wb <- loadWorkbook(paste(filepath,"XLConnectExample1.xlsx",sep=""), create = TRUE)

#creating sheets within an Excel workbook
createSheet(wb, name = "chickSheet")

#writing into sheets within an Excel workbook :
#writing ChickWeight data frame into chickSheet
#ChickWeight data frame
writeWorksheet(wb, ChickWeight, sheet = "chickSheet", startRow = 3, startCol = 4)

#saving a workbook to an Excel file :
#saves a workbook to the corresponding Excel file and writes the file to disk.
saveWorkbook(wb)

#
# writeWorksheetToFile("XLConnectExample2.xlsx", data = ChickWeight,
#                                  sheet = "chickSheet", startRow = 3, startCol = 4)
# Reading
#Loading an Excel workbook. Both .xls and .xlsx file formats can be used.
wb2 = loadWorkbook(paste(filepath,"XLConnectExample1.xlsx",sep=""), create = FALSE)

#reading worksheets of an Excel workbook
data = readWorksheet(wb2, sheet = "chickSheet", startRow = 0, endRow = 10,
startCol = 0, endCol = 0)

# data = readWorksheetFromFile("XLConnectExample1.xlsx", sheet = "chickSheet",
# startRow = 0, endRow = 10, startCol = 0, endCol = 0)

#print data
print(data)
#str(data)

# # Create a sheet named 'boxplot'
# createSheet(wb, name = "boxplot")
#
# # Create a named region called 'boxplot' referring to the sheet
# # called 'boxplot'
# createName(wb, name = "boxplot", formula = "boxplot!$B$2")
#
# # Create R plot to a png device
# png(filename = "boxplot.png", width = 800, height = 600)
# boxplot(count ~ spray, data = InsectSprays, col = "lightgray")
# dev.off()
#
# # Write image to the named region created above
# addImage(wb, filename = "boxplot.png", name="boxplot", originalSize = TRUE)
#
# # Save workbook (this actually writes the file to disk)
# saveWorkbook(wb)
