# Exercise3. Make use of the class Dir for the following -
# 
# Display your current working directory.
# Create a new directory tmp under your working directory.
# Change your working directory to tmp
# Display your current working directory.
# Go back to your original directory.
# Delete the tmp directory.

puts "1. #{ENV['PWD']}"
Dir.mkdir('tmp') unless Dir.exists?('tmp')
Dir.chdir('tmp')
puts "2. #{ENV['PWD']}"
Dir.chdir('..')
puts "3. #{ENV['PWD']}"
Dir.delete('tmp')

# # This works:
# DIR_CONST = 'tmp'
# puts Dir.pwd
# if !Dir.exists?(DIR_CONST)
#   Dir.mkdir(DIR_CONST)
# end
# Dir.chdir(DIR_CONST)
# puts Dir.pwd
# Dir.chdir('..')
# puts Dir.pwd
# Dir.delete(DIR_CONST)