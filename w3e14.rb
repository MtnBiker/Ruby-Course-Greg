=begin
Exercise 14 The next set of exercises are sample questions from the Important Ruby Association Certified Ruby Programmer examination. Thanks to Satoshi Asakawa for the Japanese to English translation. Select all answers which return true.
h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
 
Answers # My guesses:

member? synonym for has_key?
include? same
has_value? does the value exist
exists? Not a hash method. Is a method for file, so should be some kind of error. 
 
1. h.member?("Matz")        # false, value, not a key
2. h.member?("Python")      # true
3. h.include?("Guido")      # false, not a key, but value
4. h.include?("Ruby")       # true
5. h.has_value?("Larry")    # true
6. h.exists?("Perl")        # Not a hash method. Is a method for file, so should be some kind of error.

=end

h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }

puts h.member?("Matz")     
puts h.member?("Python")   
puts h.include?("Guido")   
puts h.include?("Ruby")    
puts h.has_value?("Larry") 
begin # couldn't resist throwing this in as I just learned it from problems with a script of mine
  h.exists?("Perl")
rescue NoMethodError => err
  puts 'h.exists?("Perl") errored:'
  puts "#{err.message}"
end

=begin
false
true
false
true
true
h.exists?("Perl") errored:
undefined method `exists?' for {"Ruby"=>"Matz", "Perl"=>"Larry", "Python"=>"Guido"}:Hash
100%
=end