## R course: Ninth lesson


## Exercise 9.1

tapply(presidents,cycle(presidents),mean,na.rm=T)



## Exercise 9.2

summary(airquality$Wind)
my.cut<-cut(airquality$Wind,breaks=2*(1:11)-1)
tapply(airquality$Solar.R,my.cut,mean,na.rm=TRUE)



## Exercise 9.3

summary(swiss)
my.cut2<-cut(swiss$Agriculture,breaks=10*(0:10))
my.cut3<-cut(swiss$Catholic,breaks=10*(0:10))
tapply(swiss$Fertility,list(my.cut2,my.cut3),mean)



## Quiz

colMeans(airquality)
sapply(airquality, mean)

tapply(chickwts$weight, chickwts$feed, mean)
aggregate(weight~feed, data=chickwts, mean)
by(chickwts$weight, chickwts$feed, mean)

prop.table(with(airquality, table(Month, Temp > 80)),1)
prop.table(with(airquality, table(Temp > 80, Month)),2)

lapply(airquality, mean)
as.list(sapply(airquality, mean))



## Lab

my.data<-data.frame(Treatment=c(rep("A",4),rep("B",4)),
                    Stone=rep(rep(c("Small","Large"),c(2,2)),2),
                    Success=rep(c(1,0),4),
                    Count=c(81,6,192,71,234,36,55,25))


my.table<-xtabs(Count~Treatment+Success+Stone,data=my.data)

prop.table(margin.table(my.table, 1:2),1)

prop.table(my.table[,,2],1)

prop.table(my.table[,,1],1)

prop.table(my.table[1,,],2) 

prop.table(my.table[2,,],2)

prop.table(margin.table(my.table, c(3,1)),1)
prop.table(margin.table(my.table, c(1,3)),2)
