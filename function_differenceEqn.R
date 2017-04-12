quadmap <- function(start, rho, niter)
{
  vect <- c(start)
  for(k in 2:niter)
  {
    vect[k] <- (rho*vect[k-1])*(1-vect[k-1])
  }
  return(vect)
}

mod <- function(val)
{
  if(val < 0)
  {
    return(val*(-1))
  }
  else
  {
    return(val)
  }
}

dampening <- function(start, rho)
{
  x <- start
  x_next <- (rho*start)*(1-start)
  n <- 1
  diff <- x_next - x
  while(mod(diff) > 0.02)
  {
    x <- x_next
    x_next <- (rho*x)*(1-x)
    n <- n+1
    diff <- x_next - x
  }
  return(n)
}

print(quadmap(0.99, 2, 10))
tmp <- quadmap(0.95, 2.99, 500)
plot(tmp, type="l")
plot(tmp[300:500], type="l")

print(dampening(0.95, 2.99))

  