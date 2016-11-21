## R course: Third lesson


## Exercise 1

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
