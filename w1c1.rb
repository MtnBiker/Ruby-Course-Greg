# This challenge has been set by our mentor, Victor Goff.
# 
# Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.” Use the following values for age_in_seconds:

# age_in_seconds = 979000000
# age_in_seconds = 2158493738
# age_in_seconds = 246144023
# age_in_seconds = 1270166272
# age_in_seconds = 1025600095
# seconds_in_year = 365*24*3600
# seconds_in_month = seconds_in_year/12
# years = age_in_seconds/seconds_in_year # this gets truncated which is fine
# # puts years
# # puts years * seconds_in_year
# # puts age_in_seconds
# # puts (age_in_seconds - (years * seconds_in_year))
# months = (age_in_seconds - (years * seconds_in_year))/seconds_in_month
# 
# puts "I’m #{years} years and #{months} months old."


def calculate_age (age_in_seconds)
  seconds_in_year = 365*24*3600
  seconds_in_month = seconds_in_year/12
  years = age_in_seconds/seconds_in_year # this gets truncated which is fine
  months = (age_in_seconds - (years * seconds_in_year))/seconds_in_month
  puts "I’m #{years} years and #{months} months old."
  [years, months] # following your suggestion to return an array
end

ageArr1 = calculate_age 979000000
ageArr2 = calculate_age 2158493738
ageArr3 = calculate_age 246144023
ageArr4 = calculate_age 1270166272
ageArr5 = calculate_age 1025600095

puts ageArr1