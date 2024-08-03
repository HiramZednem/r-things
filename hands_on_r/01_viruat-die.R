

roll <- function(die=1:6) {
  result <- sample(die,size=2, replace=TRUE)
  sum(result)
}

library(ggplot2)
x3 <- c(0,1,1,2,2,2,3,3,4)
qplot(x3, binwidth=1) # Histograma del vector

replicate(3, 1+1) # repite la instruccion las veces que quiera

qplot(replicate(10000,roll()), binwidth=1) 

# Now, I want to change the probabilities from my dice to make the 6 more offten 
# to appear 3/8, and for the other numbers 1/8
?sample
roll <- function(die=1:6) {
  result <- sample(die,size=2, replace=TRUE,
                   prob=c(1/8,1/8,1/8,1/8,1/8,3/6))
  sum(result)
}

