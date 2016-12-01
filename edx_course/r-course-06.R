## R course: Sixth lesson

setwd("/home/alejandro/repositories_per/r/r-scripts/edx_course/resources")


## Exercise 6.1

set.seed(9007)
my.data<-data.frame(x = rnorm(10), y = rnorm(10) + 5, z = rchisq(10, 1))
additional.data <- data.frame(x = rnorm(3), y = rnorm(3) + 5, z = rchisq(3, 1))

write.table(my.data, "exercise6.1.txt", row.names = FALSE, col.names = FALSE)
write.table(additional.data, "exercise6.1.txt", row.names = FALSE, col.names = FALSE, append = T)



## Exercise 6.2

set.seed(45)
my.data <- data.frame(x = rnorm(10), y = rnorm(10), z = rnorm(10))

write.csv2(my.data,"exercise6.2.csv")



## Exercise 6.3

my.data <- data.frame(a = LETTERS[1:5], b = 1:5)
write.table(my.data, file = "exercise6.3a.csv", sep=",", row.names=FALSE)

my.text <- "TITLE extra line\n2 3 5 7\n11 13 17 \nOne more line"
writeLines(my.text, con = "exercise6.3b.txt")



## Exercise 6.4

set.seed(45)
my.data<-data.frame(x=rnorm(10),y=rnorm(10),z=rnorm(10))

save(my.data, file = "exercise6.4.RData")
rm(my.data)
load("exercise6.4.RData")

my.data



## Quiz

write.table(mtcars,file = "mtcars.txt",sep = ",")
write.csv(mtcars,file = "mtcars.txt")



## Lab

set.seed(9007)
my.data <- data.frame(x = rnorm(10), y = rnorm(10) + 5, z = rchisq(10, 1))
write.table(round(my.data, digits = 2), "lab6a.txt",row.names = FALSE)
write.table(format(my.data,digits = 20), "lab6b.txt", row.names = FALSE)

my.data2 <- my.data * (10 ** 5)
write.table(format(my.data2,digits = 20), "lab6c.txt", row.names = FALSE)

my.data3 <- read.table("lab6c.txt", header = TRUE) 
my.data3 <- my.data3 / (10 ** 5)

options(digit = 20)
sub <- my.data[1, 1] - my.data3[1, 1]
sub
