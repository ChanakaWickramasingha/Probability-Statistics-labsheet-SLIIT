setwd("D:\\SLIIT\\Y2S2\\PS\\R labs")
getwd()

#import dataset
data<- read.csv("DATA 3.csv",header = TRUE)
data

#import text file

#get data in the editor mood
fix(data)

#rename coloumn name
names(data)<-c("Age of student", "Gender","Accommondation")
fix(data)

#renmae catergorical data
data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
fix(data)

data$Accommondation<-factor(data$Accommondation,c(1,2,3),c("Home","Boarding","Logding"))
fix(data)

attach(data)

#2
#frequency table

gender.freq<-table(Gender)
Accommondation.freq<-table(Accommondation)
gender.freq
Accommondation.freq

#pie chart
pie(gender.freq,"pie chart for gender")
pie(Accommondation.freq,"pie char for accomondation")

#barplot
barplot(gender.freq,main = "Bar plot for gender",ylab = "frequency")
abline(h = 0)
barplot(Accommondation.freq,main = "blar plot for accomondation",ylab = "frequency")
abline(h = 0)

#boxplot
boxplot(`Age of student`,main = "Boxplot for age",ylab = "Age",outpch=8)


#3
#two-way-frequnecy table
gender_acc.freq<-table(Gender,Accommondation)
gender_acc.freq

#stack_bar_chart
barplot(gender_acc.freq,main="Gender&Accomondation",legend=rownames(gender_acc.freq))
abline(h=0)        

#clustered barchart
barplot(gender_acc.freq,beside = TRUE, main="Gender&Accomondation",legend=rownames(gender_acc.freq))
abline(h=0)

#sideBySide boxplot
boxplot(`Age of student`~Gender,main ="Boxplot for age by gender",xlab="gender",ylab="age")
boxplot(`Age of student`~Accommondation,main="boxplot for accomondation by age",xlab = "age",ylab = "Gender",outpch=6)

#5
xtabs(`Age of student`~Gender+Accommondation)/gender_acc.freq 



