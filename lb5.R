getwd()
setwd("D:\\SLIIT\\Y2S2\\PS\\lbSheet")
getwd()
data <- read.table("Data.txt", header = TRUE, sep = ",")
data
fix(data)

#renameing columns
names(data) <- c("X1","X2")
fix(data)

attach(data)

#Q1
#histogram
hist(X2, main ="shareholders", ylab = "frequently")
abline(h =0)

#Q2
histogram<-hist(X2,main = "shareholders",breaks = seq(130,270,length = 8),right = FALSE)
histogram
#lenght of classes(n = n+1)

#Q3
#identify break point
breaks <-round(histogram$breaks)
breaks

#identify freqency of each class
freq <- histogram$counts
freq

#identify the mid point of each classes
mid <- histogram$mids
mid

#create empty vector
classes <- c()

for(i in 1:length(breaks)-1){
  classes[i]<-paste("{",breaks[i],",",breaks[i+1],"}")
}
cbind(classes = classes, frequency = freq)

#q4
#draw in the same plot
lines(histogram$mids,freq)

#draw in new plot
plot(mid,freq,type="l", main = "frequency polygon for number of shareholders" , xlab = "shareholders", ylab = "frequncy", ylim = c(0,max(freq)))

#type= o, type = p


#q5
cum.freq<-cumsum(freq)
cum.freq

#empty vector
new <- c()

for(i in length(breaks)){
  if(i == 0){
    new[i] =0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks,new,type = "o", main = "frequency polygon for number of shareholders" , xlab = "shareholders", ylab = "cummalative frequncy", ylim= c(0,max(cum.freq)))















