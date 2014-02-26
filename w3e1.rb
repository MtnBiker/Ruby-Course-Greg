# Exercise1. Why is the output of this program:
def method
  a = 50
  puts a
end
 
a = 10
method
puts a
 
=begin
This displays like so:
 
50
10

Because the two a's are in different scopes.
=end