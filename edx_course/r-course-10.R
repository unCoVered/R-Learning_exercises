## R course: Tenth lesson


## Exercise 10.1

par(mfrow=c(3,3))

set.seed(779)

for(i in 1:9){
  hist(rnorm(25), probability=TRUE,main=paste("Histogram",i))
  curve(dnorm,add=TRUE,col="red",lwd=3)
}



## Random exercise 

doone <- function(x) {
  x <- rbinom(1, 50, 1/6)
  p <- x/50
  p
}
p.sim <- replicate(1000, doone())
hist(p.sim, breaks = 15)



## Exercise 10.2

my.ozone<-airquality$Ozone[!is.na(airquality$Ozone) & airquality$Ozone>1]

# First
mean.1<-mean(my.ozone)
sd.1<-sd(my.ozone)

length(my.ozone)

set.seed(55789)
simulated.1<-rnorm(115,mean=mean.1,sd=sd.1)

qqplot(simulated.1,my.ozone)
lines(0:200,0:200,type="l",lwd=3,col="red")

# Second
mean.2<-mean(log(my.ozone))
sd.2<-sd(log(my.ozone))

set.seed(8942)
simulated.2<-rnorm(115,mean=mean.2,sd=sd.2)

qqplot(exp(simulated.2),my.ozone)
lines(0:200,0:200,type="l",lwd=3,col="red")



## Exercise 10.3

doone <- function(){
  x <- sum(sample(1:6,2,replace=TRUE))
  y <- sum(sample(1:6,x,replace=TRUE))
  y
}

set.seed(457778) 
y.values<-replicate(1000,doone())
hist(y.values) 



## Quiz

rnorm(3, mean=2, sd=1)

n<-1000 
doone <- function(){ 
  x<-rbinom(1,50,1/6) 
  p<-x/50 
  p 
} 
p.sim<-replicate(n,doone())
p.sim

doone <- function(){ 
  x<-rbinom(1,50,1/6) 
  p<-x/50 
  p 
} 
p.sim<-replicate(100,doone()) 
hist(p.sim,breaks=20)



## Lab

setwd("/home/alejandro/repositories_per/r/r-scripts/edx_course/resources")

my.data <- read.csv("data.lab10.csv")
data1<-my.data$systolic.bp[my.data$Genotype=="BA"]
data2<-my.data$systolic.bp[my.data$Genotype=="BB"]

testResult <- t.test(data1,data2)
testResult
