#  Now have to refactor using Symbols per the instructions

# Also should probably make it a class or method which would take care of the first problem

mp3file = "/Users/gscar/Music/iTunes-MBP/iTunes Media/Music/Various artists/The 99 Most Essential Violin Masterpieces/21 Sonata No. 5 in F Major for Violin and Piano, Op. 24, _Spring Sonata__ I. Allegro.mp3" # missed the link to the supplied file, but meant I had one less thing to worry about, reading from the internet

# mp3file = "http://rubylearning.com/data/song.mp3" # Oh, have to read from internet
start = -140

text = File.readlines(mp3file).to_s # Didn't work without ".to_s"
if text[start, 3] == "TAG"
  last125 = text[start + 3, 122] 
  song_title = text[start +3, 30]
  artist = text[start + 33, 30]
  next30 = text[start + 63, 30]
  last30 = text[start + 93, 30]
else
  puts "Not a valid mp3 file"
end
puts last125
puts song_title
puts artist
puts next30
puts last30

=begin
Exercise 2. Write a Ruby program that analyzes an MP3 file. 

Many MP3 files have a 128-byte data structure at the end called an ID3 tag. These 128 bytes are literally packed with information about the song: its name, the artist, which album it's from, and so on. 
You can parse this data structure by opening an MP3 file and doing a series of reads from a position near the end of the file. According to the ID3 standard, if you 

start from the 128th-to-last byte of an MP3 file and read three bytes, you should get the string TAG. If you don't, there's no ID3 tag for this MP3 file, and nothing to do. 

If there is an ID3 tag present, then the 30 bytes after TAG contain the name of the song, the 30 bytes after that contain the name of the artist, and so on. 

A sample song.mp3 file is available to test your program. Use Symbols, wherever possible.
=end

# TAGL'Estro Armonico, Op. 3 - ConcBohuslav Matousek, Janacek ChaThe 99 Most Essential Violin M2010Amazon.com Song ID: 21957116 ( 

