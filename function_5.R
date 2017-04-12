tmpFn <- function(k, n)
{
 mat <- matrix(0, n, n)
 for(i in 1:n)
 {
   for(j in 1:n)
   {
     if(i == j)
     {
       mat[i,j] <- k
     }
     if(i == j+1 || i == j-1)
     {
       mat[i,j] <- 1
     }
   }
 }
  return(mat)
}


print(tmpFn(2,5))

