set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
n <- 250
val <- 1
vect <- 0
for(i in 1:n)
{
  if(yVec[i]>600)
  {
    vect[val]  <- yVec[i]
    val <- val + 1
  }
  
  
}
print(vect)
