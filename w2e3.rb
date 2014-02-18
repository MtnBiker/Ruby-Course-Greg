# Exercise3. Write a method leap_year?. It should accept a year value from the user, 
# 1. check whether it's a leap year, and then return true or false. 
# 2. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and 
# 3. the number of minutes in a non-leap year (1900 and 2005). 
# Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder. If not so divisible they are common years. 1900, therefore, is not a leap year.

def not_leap_year(year)
  puts "#{year} is not a leap year"
end

def leap_year(year)
  if (year % 4) == 0
    if year % 100 == 0
      if year % 400 == 0
        puts "There are #{year*366*24*3600} seconds in the leap year #{year}"
      else
        not_leap_year(year)
      end
    else
      not_leap_year(year)
    end
  else
    not_leap_year(year)
  end  
end # leap_year

leap_year(2000)

leap_year(1900)

leap_year(25)

leap_year(1645)