setwd("C:/Users/User/Documents/R-Files/PS/Lab6/IT24103038")

#Exercise
##Question 01
#Part i
#Binomial Distribution
#Here, random variable X has binomial distribution with n=50 and p=0.85

#Part ii
pbinom(46, 50, 0.85, lower.tail = FALSE)

##Question 02
#Part i
#Average number of customer calls received by a call center per hour

#Part ii
#Poisson distribution
#Here, random variable X has poisson distribution with lambda=12

#Part iii
dpois(15, 12)
