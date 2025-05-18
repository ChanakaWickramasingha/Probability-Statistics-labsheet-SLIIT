
getwd()

#q1
data1 <- read.table("Forest.txt",header = TRUE, sep = ",")
data1

fix(data1)

attach(data1)

#q2
#give the summary of the structure of the data set
str(data1)

#q3
517

#q4
max(wind)
min(wind)

#q5
#five number summary
summary(temp)

#q6
boxplot(wind,main = "wind", xlab= "wind", horizontal = TRUE, outline = TRUE, pch = 16)

#q7
#negative distribution

#q8
median(temp)

#q9
mean(wind)
summary(wind)
sd(wind)

#q10
IQR(wind)

#q11
# 2 way frequency table for day and variable

freq<-table(day,month)
freq
freq<-table(month,day)
freq

#q12
mean(temp[month == "sep"])

#q13
count<-table(day[month == "jul"])
names(count[count == max(count)])










