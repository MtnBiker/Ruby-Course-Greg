# Exercise 11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it is odd or even.

collection = [12, 23, 456, 123, 4579]
collection.each{ |x|
  if x.remainder(2) == 0
    puts "#{x} is even"
  else
    puts "#{x} is odd"
  end
}

=begin
12 is even
23 is odd
456 is even
123 is odd
4579 is odd
=end