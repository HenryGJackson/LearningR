fun4q1a <- function(xVec, yVec)
{ 
  colSums(outer(yVec, xVec, "<") )
} 

fun4q1b <- function(xVec, yVec)
{
  rowSums(sapply(yVec, FUN=function(y){y < xVec}))
}

fun4q1c <- function(xVec, yVec)
{
  rowSums(vapply(yVec, FUN=function(y){y < xVec}, 
                 FUN.VALUE=seq(along=xVec)))
}

fun4q1d <- function(xVec, yVec)
{
  leny <- length(yVec)
  mat <- matrix(rep(xVec, leny), byrow=T, nrow=leny)
  apply( yVec<mat, 2, sum)
}

xVec <- rnorm(10000)
yVec <- rnorm(12000)

print(fun4q1a(xVec, yVec))
print(fun4q1b(xVec, yVec))
print(fun4q1c(xVec, yVec))
print(fun4q1d(xVec, yVec))

system.time(fun4q1a(xVec, yVec))
system.time(fun4q1b(xVec, yVec))
system.time(fun4q1c(xVec, yVec))
system.time(fun4q1d(xVec, yVec))
