# Exercise 10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.

collection = [1, 2, 3, 4, 5]

sum_of_elements = 0

collection.each { |x|
  sum_of_elements += x
}

puts sum_of_elements # ==> 15

# Another way from discusssion

def after collection
  collection.inject(:+)
end

puts after collection