# Exercise 3
# 
# Write a Ruby program that displays how old I am, if I am 979000000 seconds old. Display the result as a floating point (decimal) number to two decimal places (for example, 17.23). Note: To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57

x = 979000000.0
yrs = x/(365*24*3600)
puts sprintf("%.2f", yrs) >> 31.04
