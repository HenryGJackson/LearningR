set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
for(i in 3:250)
{
  fVec[i-2] <- xVec[i-2] + (2*xVec[i-1]) - xVec[i]
}
print(fVec)