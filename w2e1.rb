# Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:
# 
# >ruby tmp.rb
# Line 1: Welcome to the forum.
# Line 2: Here you can learn Ruby.
# Line 3: Along with other members.
# >Exit code: 0

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

def string_lines(s)
  new_s = ""
  arr = s.split("\n") 
  j = 0
  arr.each { 
    |i| new_s << "Line #{j+1}: #{i}\n"
    j += 1 
  }
  # without the next line, the original string is returned
  new_s
end
puts string_lines(s)

