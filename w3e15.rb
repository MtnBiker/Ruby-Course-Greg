# Exercise 15 Select all correct outputs for the following program:
# for i, j in [[1, 2], [3, 4], [5, 6]]
#   p [i, j]
# end         
#  
# Answers:
#  
# 1. [[1, 2], nil]
# [[3, 4], nil]
# [[5, 6], nil]
#  
# 2. [nil, [1, 2]]
# [nil, [3, 4]]
# [nil, [5, 6]]
#  
# 3. [1, 2]
# [3, 4]
# [5, 6] 
#  
# 4. Syntax Error

for i, j in [[1, 2], [3, 4], [5, 6]]
  p [i, j]
end         

=begin
[1, 2]
[3, 4]
[5, 6]
=end
puts
puts "Does this mean that it's only operating on pairs? Apparently so, as shown bleow"

for i, j in [[1, 2], [3, 4], [5, 6], 1]
  p [i, j]
end  

puts
for i, j in [[1, 2], 7, [3, 4], [5, 6]]
  p [i, j]
end
puts
puts "The answer is 3"         
       
