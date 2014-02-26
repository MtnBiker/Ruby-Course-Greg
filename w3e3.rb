# Exercise3. Make use of the class Dir for the following -
# 
# Display your current working directory.
# Create a new directory tmp under your working directory.
# Change your working directory to tmp
# Display your current working directory.
# Go back to your original directory.
# Delete the tmp directory.
Dir.delete('tmp')
puts "1. #{ENV['PWD']}"
Dir.mkdir('tmp')
Dir.chdir("/tmp")
puts "2. #{ENV['PWD']}"
Dir.chdir('..')
puts "13. #{ENV['PWD']}"
Dir.delete('tmp')
