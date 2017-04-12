vector <- c(0)
for(i in 1:25)
{
  vector[i] <- ((2^i)/i) + ((3^i)/(i^2))
}
print(vector)
sum(vector)