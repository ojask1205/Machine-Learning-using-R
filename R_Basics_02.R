setwd("C:/Users/ADMIN/Desktop/Dataset")
a=read.csv("dataset1.csv")
a
b=mean(a$Height)
b
c=median(a$Height)
c
#function for mode
d=table(a$Height)
d
names(d)[d==max(d)]
#Plotting histogram
hist(a$Height,xlab="height",main="histogram for height")
r=read.csv("dataset2.csv")
r
plot(r$Temp,r$Pressure)