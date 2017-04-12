weekday <- function(day, month, year)
{
  k <- day
  if(month < 3)
  {
    m <- month+10
    y <- (year-1) %% 100
    c <- floor((year-1)/100)
  }
  else if(month < 11)
  {
    m <- month - 2
    y <- year %% 100
    c <- floor(year/100)
  }
  else
  {
    m <- month - 2
    y <- (year+1) && 100
    c <- floor((year+1)/100)
  }
  
  val <- round(((2.6*m - 0.2) + k + y + floor(y/4) +
    floor(c/4) - (2*c)) %% 7, digits = 0)
  return(val)
}

print_day <- function(day)
{
  if(day == 1)
  {
    print("Sunday")
  }
  else if(day == 2)
  {
    print("Monday")
  }
  else if(day == 3)
  {
    print("Tuesday")
  }
  else if(day == 4)
  {
    print("Wednesday")
  }
  else if(day == 5)
  {
    print("Thursday")
  }
  else if(day == 6)
  {
    print("Friday")
  }
  else if(day == 7)
  {
    print("Saturday")
  }
}

print_day(weekday(21,05,1995))


