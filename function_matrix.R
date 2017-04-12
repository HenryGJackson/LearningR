tmpFn <- function(mat)
{
 for(i in 1:nrow(mat))
 {
   for(j in 1:ncol(mat))
   {
     if (mat[i,j] %% 2 != 0)
     {
       mat[i,j] <- mat[i,j]*2
     }
   }
 }
  return(mat)
}

init_vect <- c(1, 5, -2, 1, 2, -1, 3, 6, -3)
mat <- matrix(init_vect, 3, 3)

print(mat)
print(tmpFn(mat))

