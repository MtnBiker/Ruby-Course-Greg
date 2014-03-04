# Exercise 9. Given a string, write a program to reverse the word order (rather than character order). The String and Array classes provide methods which will be very helpful for solving this exercise.

string_to_reverse_word_order = "Given a string, write a program to reverse the word order (rather than character order). The String and Array classes provide methods which will be very helpful for solving this exercise."

reversed_string = string_to_reverse_word_order.split(" ").reverse.join(" ")

puts reversed_string

puts "\nWorks if you ignore parenthesis and periods. Depending on more detailed instructions could fix this"
