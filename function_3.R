tmpFn <- function(xVec)
{
  i <- 0
  vec <- c(NA)
  for( x in xVec )
  {
    i <- i+1
    if(x < 0)
    {
      vec[i] <- (x^2) + (2*x) + 3
    }
    else if(x >= 0 || x < 2)
    {
      vec[i] <- x + 3
    }
    else
    {
      vec[i] <- (x^2) + (4*x) - 7
    }
  }
  return(vec)
}

set.seed(50)
xVec <- c(-3:3)


print(xVec)
print(tmpFn(xVec))
