setwd("C:/Users/User/Documents/R-Files/PS/Lab7")

#Exercise
#Question 01
punif(25, min = 0, max = 40,  lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

#Question 02
pexp(2, rate = (1/3), lower.tail = TRUE)

#Question 03
#Part i
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)

#Part ii
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
