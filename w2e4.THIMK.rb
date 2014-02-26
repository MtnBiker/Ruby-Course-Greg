# a. Imagine for a moment, that you want to be able to set a variable, but if it’s not set, you default to a known value. You’d rather do it on a single line.
# 
# puts expand = defined?( expand ) ? expand : true
# Why is the output nil ?
# expand = "texx"

puts expand = defined?( expand ) ? expand : true
# puts expand.class # => nil

puts "This works"
def check_sign(number)
  number > 0 ? "#{number} is positive" : "#{number} is negative"
end

puts check_sign(-1)