vect <- c (0, 1, 2, 3, 4, 5, 6, 7, 8)
init_vect <- vect
length <- length(vect)
vect2[1] <- vect[length] 
for(val in 1:length)
{
  for(i in 2:length)
  {
    vect2[i] <- vect[i-1]
  }
  vect2[1] <- vect[length] 
  for(k in 1:length)
  {
    j <- (val*length)+k
    init_vect[j] <- vect2[k]
  }
  vect <- vect2
}
mat <- matrix(init_vect, length, length)
print(mat)
