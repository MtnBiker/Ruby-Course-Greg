# Exercise 1. Write a class called Dog, that has name as an instance variable and the following methods:
# 
# bark(), eat(), chase_cat()
# I shall create the Dog object as follows:
# d = Dog.new('Leo')

class Dog
  def initialize(name)
    @name = name    
  end
  def bark
    puts "Ruff! Ruff!"
  end
  
  def eat
    puts 'Munch! Munch!'
  end
  
  def chase_cat
    puts 'Grrr, scamper, Grrr, scamper'
  end
  
end

d = Dog.new('Leo')

puts d.chase_cat