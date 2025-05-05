getwd()

data <-read.table("DATA 4.txt",heade = TRUE, sep ="")
data
fix(data)

#change column names
names(data)<- c("Team ","Attendance","Salary","Years")
fix(data)

#accessign variables or columns direclty
attach(data)

#boxplot
boxplot(Attendance,main ="boxplot for attendance",xlab = "attendacne", horizontal = TRUE)
boxplot(Salary,main ="boxplot for attendance",xlab = "Salary", horizontal = TRUE)
boxplot(Years,main ="boxplot for attendance",xlab = "Years", horizontal = TRUE)

#histogram
hist(Attendance , main ="histogram for attendance",ylab = "frequently")
abline(h=0)
hist(Salary , main ="histogram for Salary",ylab = "frequently")
abline(h=0)
hist(Years , main ="histogram for Years",ylab = "frequently")
abline(h=0)

#stem-leaf
stem(Attendance)
stem(Salary)
stem(Years)

#mean
mean(Attendance)
mean(Salary)
mean(Years)

#median
median(Attendance)
median(Salary)
median(Years)

#standard deviation
sd(Attendance)
sd(Salary)
sd(Years)

#summary of all quantile values
summary(Attendance)

#quantile values
quantile(Attendance)
quantile(Attendance)[2]

#IQR
IQR(Attendance)
IQR(Salary)
IQR(Years)

fix(data)

#q3
#function that accept argument Years and give the mode
get.mode <- function(y){
  counts <- table(y)
  names(counts)[counts == max(counts)] 
}
get.mode(Years)

#q4
get.outlier <- function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3-q1
  ub <- q3 + 1.5*iqr
  lb <- q1 - 1.5*iqr
  print(ub)
  print(lb)
  print(paste("outliers",paste(sort(z[z<lb|z>ub]),collapse = ",")))
}
get.outlier(Years)


