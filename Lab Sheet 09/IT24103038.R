setwd("C:/Users/User/Documents/R-Files/PS/Lab9")

#Question 01
#Part i
set.seed(123)
bake_time<-rnorm(25,mean=45,sd=2)
print(bake_time)

#Part ii
t.test(bake_time,mu=46,alternative = "less",conf.level = 0.95)
print(t.test)
