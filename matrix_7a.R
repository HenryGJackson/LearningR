set.seed(75) 
aMat <- matrix( sample(10, size=60, replace=T), nr=6)

rows <- nrow(aMat)
cols <- ncol(aMat)
count <- 0

for(i in 1:rows)
{
  for(j in 1:cols)
  {
    if(aMat[i, j] > 4)
    {
      count = count + 1
    }
  }
}
print(aMat)
print(count)