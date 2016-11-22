## R course: Third lesson


## Exercise 3.1

set.seed(1786)
data.exercise.3.1 <- exp(matrix(rnorm(2000),nrow=100))
index1.temp <- sample(1:100,10)
index2.temp <- sample(1:20,10)

for (i in 1:10) {
  data.exercise.3.1[index1.temp[i], index2.temp[i]] <-- 1
}

my.data <- data.exercise.3.1

count.negatives <- 0
for (j in my.data[, 1]) {
  negative <- (min(my.data[j, ]) < 0)
  count.negatives <- count.negatives + negative

  if (count.negatives <= 3) {
    if (!negative) {
      cat("The mean of row", j, "is", mean(my.data[j, ]), "\n")
    } else {
      cat("<Row", j, "contains negative values> \n")
    }
  } else {
    cat("Too many negative values \n")
    break
  }
}



## Exercise 3.2

k<-10
y<-matrix(rnorm(k^2),nrow=k)
z<-0*y

#loop:
time1<-as.numeric(Sys.time())
for(i in 1:k){
  #loop:
  for(j in 1:k){
    z[i,j]<-y[i,j]^2
  }
}
time2<-as.numeric(Sys.time())
# using object form in R:
time3<-as.numeric(Sys.time())
# using object form in R:
z<-y^2
time4<-as.numeric(Sys.time())
# run time increase factor:
(time2-time1)/(time4-time3)



## Exercise 3.3

k1<-10
k2<-100000
my.data<-as.data.frame(matrix(rnorm(k1*k2),nrow=k1))
mean1<-numeric(k2)
mean2<-numeric(k2)

time1<-as.numeric(Sys.time())
for(i in 1:k2){
  mean1[i]<-mean(my.data[,i])
}
time2<-as.numeric(Sys.time())
time3<-as.numeric(Sys.time())
mean2<-sapply(my.data,mean)
time4<-as.numeric(Sys.time())
(time2-time1)/(time4-time3)



## Lab - 1, 2, 3

k<-1000
r<-100
x<-as.data.frame(matrix(rnorm(k*r),nrow=r))
my.summary<-matrix(nrow=4,ncol=k)

for(i in 1:k) {
  my.summary[1,i] <- min(x[, i])
  my.summary[2,i] <- median(x[, i])
  my.summary[3,i] <- mean(x[, i])
  my.summary[4,i] <- max(x[, i])
}

my.function<-function(x){
  return(c(min(x),median(x),mean(x),max(x)))
}

sapply(x, my.function)
