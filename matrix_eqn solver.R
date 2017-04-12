vect <- c (1, 2, 3, 4, 5)
vectAns <- c(7, -1, -3, 5, 17)
init_vect <- vect
length <- length(vect)
low_val <- 1

for(val in 1:length)
{
  for(i in 2:length)
  {
    vect2[i] <- vect[i-1]
  }
  vect2[1] <- low_val +1
  for(k in 1:length)
  {
    j <- (val*length)+k
    init_vect[j] <- vect2[k]
  }
  vect <- vect2
  low_val <- low_val+1
}
matA <- matrix(init_vect, length, length)
matB <- matrix(vectAns, length, 1)

invA <- solve(matA)
matX <- invA %*% matB
print(matX)

matx <- solve(matA, matB)
print(matx)