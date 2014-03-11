# Exercise 1. Write a class UnpredictableString which is a sub-class of String. This sub-class should have a method called scramble() which randomly rearranges any string as follows:

# >ruby unpredictablestring.rb
# daano.r n sdt a htIsw taikmgy r
# >Exit code: 0
# the original string was: "It was a dark and stormy night."

input = "It was a dark and stormy night."

class UnpredictableString < String
  def scramble(input)
    input.chars.shuffle.join
  end
end

text_to_scramble = UnpredictableString.new

puts text_to_scramble.scramble(input)

# Maybe should check for double spaces.