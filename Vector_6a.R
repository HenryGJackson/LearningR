set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
for(i in 2:250)
{
  fVec[i-1] <- yVec[i] - xVec[i-1]
}
print(fVec)