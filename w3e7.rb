# Exercise 7. First of all, I'd like to thank Peter Cooper for allowing me to use this exercise.
# 
# The application you're going to develop will be a text analyzer. You will be working on it this and next week. Your Ruby code will read in text supplied in a separate file, analyze it for various patterns and statistics, and print out the results for the user. It's not a 3D graphical adventure or a fancy Web site, but text processing programs are the bread and butter of systems administration and most application development. They can be vital for parsing log files and user-submitted text on Web sites, and manipulating other textual data. With this application you'll be focusing on implementing the features quickly, rather than developing an elaborate object-oriented structure, any documentation, or a testing methodology.
# 
# Your text analyzer will provide the following basic statistics:
# 
# Character count
# Character count (excluding spaces)
# Line count
# Word count
# Sentence count
# Paragraph count
# Average number of words per sentence
# Average number of sentences per paragraph
# In the last two cases, the statistics are easily calculated from the word count, sentence count, and paragraph count. That is, once you have the total number of words and the total number of sentences, it becomes a matter of a simple division to work out the average number of words per sentence.
# 
# Before you start to code, the first step is to get some test data that your analyzer can process. You can find the text at:
# http://rubylearning.com/data/text.txt
# 
# Save the file in the same folder as your other Ruby programs and call it text.txt. Your application will read from text.txt by default (although you'll make it more dynamic and able to accept other sources of data later on).
# 
# Let me outline the basic steps you need to follow:
# 
# Load in a file containing the text or document you want to analyze.
# As you load the file line by line, keep a count of how many lines there are (one of your statistics taken care of).
# Put the text into a string and measure its length to get your character count.
# Temporarily remove all whitespace and measure the length of the resulting string to get the character count excluding spaces.
# Split on whitespace to find out how many words there are.
# Split on full stops (.), '!' and '?' to find out how many sentences there are.
# Split on double newlines to find out how many paragraphs there are.
# Perform calculations to work out the averages.
# Create a new, blank Ruby source file and save it as analyzer.rb in your Ruby folder.

text_file_to_process = 'text.txt'
line_count = 0
text_complete = ""
# This isn't doing what's asked for, just making sure it reads
File.open(text_file_to_process, 'r') do |f1|  
  while line = f1.gets  
    lineArr = line.split(" ")
    text_complete << lineArr.join(" ") + "\n"
    character_count = text_complete.length
    character_count_minus_whitespace = text_complete.delete(' ').length
    word_count = text_complete.split(" ").length
    sentence_count = text_complete.split(/\.|\?|'!'/).length # careful read of Thomas p68ff
    paragraph_count = text_complete.split("\n\n").length
    words_per_sentence_average = word_count/sentence_count
    sentences_per_paragragh_average = sentence_count/paragraph_count
  line_count += 1
  end  
  puts "\nline_count: #{line_count}"
  puts "\ncharacter_count: #{character_count}"
  puts "\ncharacter_count_minus_whitespace: #{character_count_minus_whitespace}. Not sure about returns"  
  puts "\nword_count: #{word_count}"
  puts "\nsentence_count: #{sentence_count}"
  puts "\nparagraph_count: #{paragraph_count}"
  puts "\nwords_per_sentence_average: #{words_per_sentence_average}"
  puts "\nsentences_per_paragragh_average: #{sentences_per_paragragh_average}"
  
end

# puts "\ntext_complete:\n#{text_complete}"
