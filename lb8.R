getwd()

nicotine <-read.table("Data - Lab 8.txt", header = TRUE)
nicotine
fix(nicotine)

#change data structure
nicotine<-nicotine[[1]]
nicotine

#q1
mean(nicotine)
var(nicotine)
sd(nicotine)

#q2
s<-sample(nicotine,5)
s
samples <- c()
n <- c()

for(i in 1:30){
  s<-sample(nicotine,5)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
colnames(samples) <- n
samples


s.mean<-colMeans(samples)
s.mean

s.var<-apply(samples, 2, var)
s.var

#q3
mean(s.mean)
var(s.mean)

#q4
mean(nicotine)
mean(s.mean)
# 2 values are approximatly equal

#q5
var(nicotine)
var(s.mean)
# 2 values are not equal. sample size is too small.
