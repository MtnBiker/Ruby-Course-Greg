=begin
Exercise 16. Select all correct ways to do an ascending sort by string length.
a = ["Magazine", "Sunday", "Jump"]
Answers # Guesses:
1. a.sort # No
2. a.sort { |s| s } # No, not sure what this is doing
3. a.sort { |l, r| l <=> r } # What's l and r? Seems like another error. No error, but sorts alphabetically
4. a.sort { |l, r| l.length <=> r.length } # Maybe this will work, based on previous one
5. a.sort_by { |s| s } # no criteria given, so will probably sort alphabetically
6. a.sort_by { |s| s.length }  # should work
=end

a = ["Magazine", "Sunday", "Jump"]

puts a.sort
puts 

begin
  a.sort    { |s| s }
rescue ArgumentError => err
  puts 'a.sort    { |s| s } errored:'
  puts "#{err.message}"
  puts
end

puts a.sort    { |l, r| l <=> r }
puts
puts a.sort    { |l, r| l.length <=> r.length }
puts
puts a.sort_by { |s| s }
puts
puts a.sort_by { |s| s.length } 
puts

puts "I don't understand the a.sort    { |l, r| l <=> r } syntax"