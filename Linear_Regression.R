#Boxplot for self_employed and education ->Loan amount
setwd("C:/Users/Admin/Desktop")
a=read.csv("TrainDataLoan.csv")
a
summary(a)
levels(a$Self_Employed)[levels(a$Self_Employed)==""]<-NA
boxplot(LoanAmount~Education+Self_Employed , data=a)

#Linear Model between Loan amount and applicant income
a$LoanAmount[is.na(a$LoanAmount)]<-mean(a$LoanAmount , na.rm=TRUE)
summary(a)
options(scipen=999)
linearmodel=lm(LoanAmount~ApplicantIncome , data=a)
print(linearmodel)
test=data.frame(ApplicantIncome=c(5000,10000,20000,40000))
predict(linearmodel , test)
cor(a$ApplicantIncome,a$LoanAmount)
plot(a$ApplicantIncome,a$LoanAmount)