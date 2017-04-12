tmpFn1 <- function(xVec)
{
  n <- length(xVec)
  Vec1 <- c(NA)
  for(i in 1:n)
  {
    Vec1[i] <- xVec[i]^i
  }
  return(Vec1)
}

tmpFn2 <- function(xVec)
{
  n <- length(xVec)
  Vec2 <- c(NA)
  for(i in 1:n)
  {
    Vec2[i] <- (xVec[i]^i)/i
  }
  return(Vec2)
}

tmpFn3 <- function(x, n)
{
  val <- 1
  for(i in 1:n)
  {
    val <- val + (x^i)/i
  }
  return(val)
}

set.seed(50)
xVec <- sample(0:999, 20, replace=T)
print(xVec)
print(tmpFn1(xVec))
print(tmpFn2(xVec))
print(tmpFn3(1, 10))
