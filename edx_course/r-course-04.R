## R course: Fourth lesson


## Exercise 4.1

matrix(1:6,nrow=3,ncol=3)
matrix(nrow=3,ncol=3)



## Exercise 4.2
x<-matrix(1:12,4)
x[cbind(c(1,3,2),c(3,3,2))]      #first selection
x[c(1,3,2),c(3,3,2)]             #second selection



## Exercise 4.3
row<-matrix(rep(1:100,100),nrow=100)
column<-matrix(rep(1:100,100),nrow=100,byrow=T)
A<-3*column^3/(1+row*column)

sum(A)
sum(A[row<=column])



### Quiz - 1, 2, 3, 4, 5

x<-1:3 
y<-seq(4,8) 
z<-rep(9:10,1)
xyz<-c(x,y,z)

x<-matrix(-4:5,nrow=2)
x<-matrix(-4:5,nrow=2)
x



## Lab - 1, 2, 3, 4, 5

set.seed(9852)
my.data<-list()
for(i in 1:100){
  my.data[[i]]<-matrix(rnorm(16),nrow=4)
}

my.index<-list()
for(i in 1:100){
  my.index[[i]]<-(my.data[[i]]<0) 
}

my.negatives<-matrix(rep(0,16),nrow=4)
for(i in 1:100){
  my.negatives<-my.negatives+my.index[[i]] 
}
my.negatives

sum(my.negatives)

my.negative.values<-numeric(0) 
for(i in 1:100){
  my.negative.values<-c(my.negative.values,my.data[[i]][my.index[[i]]])
}
my.negative.values

quantile(my.negative.values)
