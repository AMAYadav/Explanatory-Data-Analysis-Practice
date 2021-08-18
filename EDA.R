read.csv(file.choose())
bank_data = bank.full_TTIwFX
install.packages("DataExplorer")
install.packages("dlookr")
install.packages("SmartEDA")
#DATAEXPLORER  PACKAGE
library(DataExplorer)
create_report(bank_data)  #Without Response Varable or Variable of Intrest
create_report(bank_data,bank_data$education)

#SMARTEDA PACKAGE 

install.packages("SmartEDA")
library(SmartEDA)
ExpData(data = bank_data,type = 1)
ExpReport(bank_data)

ExpReport(bank_data, op_file = "bank_data.html")

#DLOOKR PACKAGE
install.packages("TREXr") 
library(dlookr)
diagnose_report(bank_data)

diagnose_paged_report(bank_data)  #Pdf file
diagnose_web_report(bank_data)  #PERFECT
#transformation_web_report(bank_data)
#transformation_paged_report(bank_data)
diagnose(bank_data)%>%flextable::flextable()  #useful function

flextable::flextable(bank_data)  #DONT RUN IT MAKES SYSTEM BULKIER ON NORMAL TIME

