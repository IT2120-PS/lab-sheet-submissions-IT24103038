setwd("C:/Users/User/Documents/R-Files/PS/Lab5")

#Importing the data set
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)

#rename variables (column headings)
names(Delivery_Times)<-c("X1")

#Attach the file into R
attach (Delivery_Times)

#view the file in a separate window
fix(Delivery_Times)

#drawing histogram
histogram <- hist(X1,
                  main="Histogram for Delivery Times",
                  breaks = seq(20, 70, length = 10),
                  right = FALSE,
                  xlab = "Delivery Times",
                  ylab = "Frequency",
                  col = "lightblue",
                  border = "black")

