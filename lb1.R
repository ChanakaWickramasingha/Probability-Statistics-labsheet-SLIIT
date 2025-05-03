#comment

#get the current working directly
getwd()

#set working directly
setwd("D:\\SLIIT\\Y2S2\\PS\\R labs")

#arithmetic operator
5+5
2^3
10%%3
9%/%2

#logical operators
x = 1
x =20
u = -2
isTRUE(x==u)

a=2
a<-1

#vector
q<-c(1,"channa",12)
class(q)
b<-c(1,1,2,6,3)
class(b)

#factor
#gender --> male<-1 female<-0
gender<-c(1,1,0,1,0)
gender
Gender<-factor(gender,c(1,0),c("male","female"))
Gender
class(gender)
class(Gender)

#List
p<-c(1,2,3)
q<-"Green"
r<-43
l<-list(p,q,r)
l
class(l)

#matrix
matrix1<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = TRUE)
matrix1
class(matrix1)
matrix2<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = FALSE)
matrix2
class(matrix2)

#dataFrame
height<-c(167,156,159,171,168)
weight<-c(69,78,81,92,74)
table<-data.frame(height,weight)
table





