setwd("C:/Users/it24103038/Desktop/IT24103038")

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

#assign class limits of the histogram to "breaks"
breaks<-round(histogram$breaks)

#assign class frequency of the histogram to "freq"
freq<-histogram$counts

#assign mid point of each class to "mids"
mids<-histogram$mids

#create "classes" for the frequency distribution
classes<-c()

#assign frequency distribution to "classes"
for(i in 1:length(breaks)-1){
  classes[i]<-paste0("[", breaks[i], ",", breaks[i+1], ")")
}

#obtaining frequency distribution by combining "classes" and "freq"
cbind(Classes=classes, Frequency=freq)

#get cumulative frequencies
cum.freq<-cumsum(freq)

#creating null variable
new<-c()

#store cumulative frequencies
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

#draw cumulative frequency polygon in a new plot
plot(breaks,
     new,
     type = 'l',
     main="Cumulative Frequency Polygon for Delivery Time",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     ylim = c(0,max(cum.freq)))