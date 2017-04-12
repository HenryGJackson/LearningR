set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
n <- 250
for(i in 1:n-1)
{
  fVec[i] <- exp(0-xVec[i+1])/(xVec[i]+10)
}
sum(fVec)
