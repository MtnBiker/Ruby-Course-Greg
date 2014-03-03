# w2q
# 2
foo = 'bar'
puts '1:#{foo}'
# 3
puts nil.class
puts false.class
#  4
def try 
  if block_given? 
    yield 
  else 
    puts "no block" 
  end 
end 
try do
  puts "hello" 
end

# Question 6
# The Numeric method nonzero?, for example, returns nil if the number it is invoked on is zero, and just returns the number otherwise.

puts 6.nonzero?
puts "0.nonzero?: #{0.nonzero?}."
a = nil
# puts "nil.nonzero?: #{nil.nonzero?}."

# Question 8
# Given the following string definition:
# [code ruby]str = 'ruby course'[/code]
# Which of the following snippets will convert the string to all uppercase (i.e. 'RUBY COURSE')?
str = 'ruby course'
# puts str.uppercase # NoMethodError: undefined method ‘uppercase’ for "ruby course":String
puts str.upcase
puts str.swapcase!


# What does the following program output?.
title = 'Programming Ruby'
price = 3_990
puts '"#{title}" is #{price} yen.' 

# Question 12
# The following tests whether two strings are the same object.
# Select one:
# a. eql?
# b. ==
# c. equal?
puts
a = b = "test string"
puts a.eql? b
puts a == b
puts a.equal? b # only one that is testing for same object
puts
a = "test string"
b = "test string"
puts a.eql? b
puts a == b
puts a.equal? b # only one that is testing for same object

# Question 13
# Is the following a valid Ruby program?
# =start
# Hi there
# =end
# puts "Hello Ruby!"

# p011vararg.rb  
# variable number of parameters example  
# The asterisk is actually taking all arguments you send to the method  
# and assigning them to an array named my_string as shown below  
# The do end is a Ruby block which we talk in length later  
def foo(*my_string)  
  my_string.inspect  
end  
puts foo('hello','world')  
puts foo()  

# What happens in this Ruby statement?
x = "hi"
puts x
x = gets
puts x
puts "Line above is puts x = gets"
# Select one:
# a. The gets method is called and asks for input, which is then assigned to x.
# b. Nothing happens.
# c. The method 'gets' gets assigned to x.

