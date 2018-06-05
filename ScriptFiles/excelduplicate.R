# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/4/2018
library("XLConnect")
library("dplyr")
# Convert to a tibble
library("tibble")

# File
filepath ="C:\\Users\\radhapavan\\Documents\\GitHub\\Rprogram\\Files\\"
filename="sample upwork.xls"
filefull = paste(filepath,filename, sep = "")
#print(filefull)

# Read
loadExcel <- loadWorkbook(filefull, create = FALSE)
dtexcl <- readWorksheet(loadExcel,'sheet1')
#print(dtexcl)
#str(dtexcl)
#print(dim(dtexcl))

#spout <- unique(dtexcl$Email)
#print(dim(spout))
#print(length(spout))

#spout <- dtexcl[!duplicated(dtexcl$Email), ]
#print(dim(spout))
#print(length(spout))
#print(spout)

dtexcl2 <- as_data_frame(dtexcl)
# Print

#print(dtexcl2)
#print(nrow(dtexcl2))
#print(ncol(dtexcl2))
#print(distinct_(dtexcl2,  "Email"))
# Remove duplicates based on Sepal.Width columns
cleanExcel = dtexcl2[!duplicated(dtexcl2$Email), ]
#print(cleanExcel)

cleanExcel2 = dtexcl2[!duplicated(dtexcl2$Index), ]
#print(cleanExcel2)


#creating an Excel workbook. Both .xls and .xlsx file formats can be used.
wb <- loadWorkbook(paste(filepath,"XLDedpuplicate.xlsx",sep=""), create = TRUE)
#creating sheets within an Excel workbook
createSheet(wb, name = "Emaildeduplicate")
createSheet(wb, name = "Indexdeduplicate")
#writing into sheets within an Excel workbook :
#writing ChickWeight data frame into chickSheet
#ChickWeight data frame
writeWorksheet(wb, cleanExcel, sheet = "Emaildeduplicate")
writeWorksheet(wb, cleanExcel2, sheet = "Indexdeduplicate")
#saving a workbook to an Excel file :
#saves a workbook to the corresponding Excel file and writes the file to disk.
saveWorkbook(wb)


