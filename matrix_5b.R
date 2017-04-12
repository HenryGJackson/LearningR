vect <- c (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
init_vect <- vect
length <- length(vect)
vect2[length] <- vect[1] 
for(val in 1:length)
{
  for(i in 1:length)
  {
    vect2[i] <- vect[i+1]
  }
  vect2[length] <- vect[1] 
  for(k in 1:length)
  {
    j <- (val*length)+k
    init_vect[j] <- vect2[k]
  }
  vect <- vect2
}
mat <- matrix(init_vect, length, length)
print(mat)
