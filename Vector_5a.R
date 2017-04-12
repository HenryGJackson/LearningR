vector <- c(string)
for(x in 1:30)
{
  vector[x] <- paste('fn',x, sep="")
} 
paste(vector)