# Exercise 2. Write a Rectangle class. I shall use your class as follows: [code ruby]r = Rectangle.new(23.45, 34.67) puts "Area is = #{r.area}" puts "Perimeter is = #{r.perimeter}" [/code]

class Rectangle
  def initialize(s1,s2)
    @s1 = s1
    @s2 = s2
  end
  
  def area
    area = @s1 * @s2
  end
  
  def perimeter
    perimeter = 2*(@s1+@s2)
  end
  
end
r = Rectangle.new(23.45, 34.67) 
# puts r
puts "Area is = #{r.area}" 
puts "Perimeter is = #{r.perimeter}" 

puts
puts 'Could do something about sig figures'