# Exercise 6. Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.
# 
# Adapted from Chris Pine's Book.
# 
# For example:
# 
# You enter: Hello Grandma
# Grandma responds: HUH?! SPEAK UP, SONNY!
# You enter: HELLO GRANDMA
# Grandma responds: NO, NOT SINCE 1938!

# def random_date # This worked, but below (from discussion and we saw it before) is obviously leaner
#   x = 0
#   until x >= 1930
#     x = rand(1950)
#   end  
#   return x
# end

puts "hi"
response = gets.chomp
until response == "BYE"
  if response == response.upcase && response != ""
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
  puts "Your response:"
  response = gets.chomp
end