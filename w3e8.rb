# Exercise 8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this in the FizzBuzz Forum.

# Oops, missed considering both the first time. Realized when saw discussion. Easy enough to add first condition, but now not DRY

100.times do |x|
  y = x + 1
  if y.remainder(5) == 0 && y.remainder(3) == 0
    puts "FizzBuzz"
  elsif y.remainder(5) == 0
    puts 'Buzz'
  elsif y.remainder(3) == 0
    puts 'Fizz'
  else
    puts y
  end
end
