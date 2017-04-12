#This creates a random 5x10 matrix and counts how many rows...
#...contain a specific number of occurances of a specific number

set.seed(75) 
aMat <- matrix( sample(10, size=60, replace=T), nr=6)

#Here is where the value being searched for is defined
search_val <- 7

#Here is where the number of times appear in each row 
#to be counted is defined
count_val <- 3

rows <- nrow(aMat)
cols <- ncol(aMat)
count <- 0

val <- 1
rows_vect = c(NA)

for(i in 1:rows)
{
  for(j in 1:cols)
  {
    if(aMat[i, j] == search_val)
    {
      count <- count + 1
    }
  }
  if (count == count_val)
  {
    rows_vect[val] <- i
    val <- val + 1
  }
  count <- 0
}
print(aMat)
print(rows_vect)