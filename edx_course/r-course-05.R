## R course: Fifth lesson

setwd("/home/alejandro/repositories_per/r/r-scripts/edx_course/resources")


## Exercise 5.1

my.data.frame <- read.table("data.exercise5.1.dat", skip = 1, header = T)
my.data.frame



## Exercise 5.2

my.data.frame <- read.table("data.exercise5.2.dat", skip = 1, header = T, sep = ";", dec = ",")
my.data.frame



## Exercise 5.3

my.data.frame <- read.csv("data.exercise5.3.csv", skip = 2, sep = ",", na.strings = "")
my.data.frame



## Exercise 5.4.1

fileA <- file("data.exercise5.4a.txt", open = "r")
my.names <- scan(fileA, what = "", nlines = 1, skip = 1)
my.data <- read.table(fileA)
close(fileA)

my.names <- paste(my.names[c(1, 3, 5)], my.names[c(2, 4, 6)])
names(my.data) <- my.names



## Exercise 5.4.2

my.data <- list()
my.names <- character(2)
fileB <- file("data.exercise5.4b.txt", open = "r")

my.names[1] <- scan(fileB, what = "", nlines = 1, skip = 1)
my.data[[1]] <- scan(fileB, nlines = 1)

my.names[2] <- scan(fileB, what = "", nlines = 1)
my.data[[2]] <- matrix(scan(fileB), nrow = 4, byrow = T)

names(my.data)<-my.names
my.data



## Lab

fileLab <- file("data.exercise5.lab.dat", open = "r")
my.data<-read.table(fileLab,skip=4,comment.char="%",nrows=7) 
my.data2<-read.table(fileLab,skip=3,sep=";",dec=",",nrows=2) 
my.data3<-read.table(fileLab,skip=5,na.strings="-9999",sep=",",nrows=2) 
my.all.data<-rbind(my.data,my.data2,my.data3) 
my.all.data
