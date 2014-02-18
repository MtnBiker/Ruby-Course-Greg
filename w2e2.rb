# Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:
def mtdarry
 10.times do |num|
 puts num
 end
end

mtdarry # just 1 to 10
# and the program:
puts
def mtdarry
 10.times do |num|
 puts num
 end
end
 puts mtdarry # this will be the return of the method an that will be the last num, 10 and it will run and output 1 to 10 first (Forgot that would start at zero, so 0 to 9 for the first method and expected a repeat of the last number, but o it's +=, i.e., 10) Why 10? Oh, the x.times do must be incrementing at the end of the loop and goes back to the beginning and then exits!