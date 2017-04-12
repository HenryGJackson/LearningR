quadrant <- function(alpha)
{
 if(((alpha/360) %% 1) < 0.25)
 {
   return(1)
 }
  else if(((alpha/360) %% 1) < 0.5)
  {
    return(2)
  }
  else if(((alpha/360) %% 1) < 0.75)
  {
    return(3)
  }
  else if(((alpha/360) %% 1) < 1)
  {
    return(4)
  }
  else
  {
    return(NA)
  }
}
print(quadrant(400))

