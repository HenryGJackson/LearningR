#This creates a random 5x10 matrix and counts how many combinations...
#...of two columns sum to greater than the sum value (75 on 26/07/2016)

set.seed(75) 
aMat <- matrix( sample(10, size=60, replace=T), nr=6)
out_mat <- matrix(NA, 10, 2, byrow=T)
rows <- nrow(aMat)
cols <- ncol(aMat)
count <- 0

val <- 1
rows_vect = c(NA)

sum_val <- 75

for(j in 1:cols)
{
  for(i in 1:cols)
  {
    if((sum(aMat[, j])+sum(aMat[, i])) > sum_val)
    {
      count <- count + 1
      out_mat[count, 1] <- i
      out_mat[count, 2] <- j
    }
  }
  count <- 0
}
count <- 0

print(aMat)
print(out_mat)