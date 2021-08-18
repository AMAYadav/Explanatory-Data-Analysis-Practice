read.csv(file.choose())
bank_data = bank.full_TTIwFX
install.packages("DataExplorer")
install.packages("dlookr")
install.packages("SmartEDA")
#DATA EXPLORER PACKAGE
library(DataExplorer)
create_report(bank_data)  #Without Response Varable or Variable of Intrest
create_report(bank_data,bank_data$education)

#SMART EDA

install.packages("SmartEDA")
library(SmartEDA)
ExpData(data = bank_data,type = 1)
ExpReport(bank_data)

ExpReport(bank_data, op_file = "bank_data.html")
