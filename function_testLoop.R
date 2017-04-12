testLoop <- function(n)
{
  vect <- c(1, 2)
  for(j in 3:n)
  {
    vect[j] <- vect[j-1] + (2/vect[j-1])
  }
  return(vect)
}

testLoop2 <- function(yVec)
{
  n <- length(yVec)
  sum <- 0
  for( j in 1:n)
  {
    sum <- sum + exp(j)
  }
  return(sum)
}

yVec <- c(0)
print(testLoop(10))
print(testLoop2(yVec))
