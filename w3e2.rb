# Exercise2. Thanks to Marcos Souza for this exercise. A plain text file has the following contents:
# text text text text text
# text text text text text
# text text word text text
# text text text text text
# text text text text text
# view raw3wk_2e_text.txt hosted with ❤ by GitHub
# Observe that in this file, there exists a word 'word'. Write a clever but readable Ruby program that updates this file and the final contents become like this:
# text text text text text
# text text text text text
# text text inserted word text text
# text text text text text
# text text text text text
# view raw3wk_2e_text_target.txt hosted with ❤ by GitHub
# Do not hard-code the file name.
textfile = 'w2e2.textFile.txt'
word_to_change = "word"
new_word = "inserted word"
lineArr = []
newTextContents = ""
File.open(textfile, 'r') do |f1|  
  while line = f1.gets  
    lineArr = line.split(" ")
    # should be done with RegEx, but since we haven't done that yet
    lineArr.each { |x|  
      i =+ 1
      if x == word_to_change
        lineArr[i+1] = new_word 
      end      
    }
    newTextContents << lineArr.join(" ") + "\n"
  end
  puts "\n#{newTextContents}" 
  puts "\n\nNeed to write to file, may need to close file above" 
  File.open('textfilenew', 'w') do |f2|  
    f2.puts newTextContents  
  end  
end  

# Used a new file to write to, so could run this more than once. I believe the effect would be the same. Will test it.
