help(outer)


xVec <- c(10, 9, 6, 3, 2, 5, 7, 5, 3, 1)
yVec <- c(4, 6, 8, 3, 7, 2, 5, 7, 6, 9)

fun4q1a <- function(xVec, yVec){
  colSums( outer(yVec, xVec, "<") )
}

fun4q1a(xVec, yVec)
