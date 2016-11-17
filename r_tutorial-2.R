my.display<-function(x) {
  cat("Summary of input: \n")
  return(summary(x))
}

my.display<-function(x, display=FALSE, type=0, prob=FALSE) {
  if (display == TRUE) {
    if (type != 1 || type != 2) {
      cat('Please specify type as either hist or density \n')
    } 
    else {
      if (type ==1) {
        if (prob == TRUE) {
          cat('HIST WITH PROB == TRUE HERE')
        } else {
        cat('HIST HERE WITH PROB == FALSE')
        }
      } else {
        cat('PLOT HERE')
      }
    }
  } 
  
  return(summary(x))
}

set.seed(1234)
my.data<-rnorm(200)

my.display(my.data)
