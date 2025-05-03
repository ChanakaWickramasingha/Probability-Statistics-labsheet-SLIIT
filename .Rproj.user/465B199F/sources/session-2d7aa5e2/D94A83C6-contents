getwd()

#set working directly
setwd("D:\\SLIIT\\Y2S2\\PS\\R labs")
getwd()

#if condition
x<- 2
y<- 3

if(x>0){
  print("Postivie")
}else{
  print("negative")
}

#nested if else
if(x>0){
  print("Postive")
}else if(X<0){
  print("Negative")
}else{
  print("Zero")
}

#while loop
while(x<10){
  print(x)
  x = x+ 1
}

#for loop
for(i in 6:10){
  print(i)
}

#importing file

data1 <- read.csv("DATA 2.csv")
fix("data1")
data1

data2 <- read.table("DATA 4.txt", header = TRUE, sep = ",")
fix("data2")

#exporting data

index <- c(1,2,3)
name <- c("amantha", "chanaka", "wick")
marks <- c(12,45,23)

dataframe <-data.frame(index,name,marks)
dataframe

write.csv(dataframe, "channaEx.csv")
write.table(dataframe, "channatxt.txt")


#function
fun1 <- function(a,b){
  y<- a+b
  print(y)
}

#calling function
fun1(2,4)


#q1

quardRoot <- function(a,b,c){
  x1<-(-b+sqrt(b^2-4*a*c))/2*a
  x2<-(-b-sqrt(b^2-4*a*c))/2*a
  print(x1)
  print(x2)
}
quardRoot(2,3,1)

#q4
vec1<- c(1:20)
sum(vec1%%3 == 0)

#q5 postponed

#q6
intvec <- c(12,45,87.22)
i<-0
max<- 0
maxIndex<-0

for(i in length(intvec)){
  if(max<intvec[i]){
    max <- intvec[i]
    maxIndex<-i
  }
}
max
maxIndex

#q7
which.max(intvec)

#q8
a<-0
lent <- function(p,r,n){
  for(i in 1:n){
    a<-(p*(1+(r/100))^i)
    print(a)
  }
}

lent(100,11.5,15)













