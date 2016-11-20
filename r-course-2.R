## Question 1

my.display<-function(x) {
  cat("Summary of input: \n")
  return(summary(x))
}

set.seed(1234)
my.data<-rnorm(200)

my.display(my.data)


## Question 2

my.display<-function(x, display=FALSE, type, prob=FALSE) {
  if (display == TRUE) {
    if (type %in% c("hist", "density")) {
      if (type %in% "hist") {
        if (prob == TRUE) {
          cat('\n HIST WITH PROB == TRUE HERE \n\n')
        } else {
          cat('\n HIST HERE WITH PROB == FALSE \n\n')
        }
      } else {
        cat('\n PLOT HERE \n\n')
      }
    } 
    else {
      cat('\n Please specify type as either hist or density \n\n')
    }
  } 
  
  return(summary(x))
}

set.seed(1234)
my.data<-rnorm(200)

my.display(my.data)



## Question 3

my.display(my.data,display=TRUE,type="hist")

