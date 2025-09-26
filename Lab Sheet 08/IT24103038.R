setwd("C:/Users/User/Documents/R-Files/PS/Lab8")

#import dataset
data<-read.table("Exercise-LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Question 01
#calculate mean
popmn<-mean(Weight.kg.)

#calculate standard deviation
popsd<-sd(Weight.kg.)

#Question 02
#create null vector
samples<-c()
n<-c()

#create 25 samples of size 6
for(i in 1:25){
  s<-sample(Weight.kg., 6, replace = FALSE)
  samples<-cbind(samples,s)
  n<-c(n, paste('S', i))
}

#assign column names
colnames(samples)=n

#Question 03
#use "apply" to calculate mean and sd
s.means<-apply(samples, 2, mean)
s.sd<-apply(samples, 2, sd)

#calculate sample mean and standard deviation
samplemean<-mean(s.means)
samplesd<-sd(s.sd)