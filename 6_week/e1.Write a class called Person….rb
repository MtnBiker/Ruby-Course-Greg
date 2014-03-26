# Exercise 1. Write a class called Person that has balance as an instance variable and make it readable via an accessor.

class Person
  def initialize(balance)
    @balance = balance
  end
  
  attr_reader :balance
  
end

c = Person.new("My balance")
puts c.balance