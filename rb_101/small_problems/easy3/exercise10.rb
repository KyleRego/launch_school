# input: an integer
# output: true if the input integer was palindromic, false otherwise

# assume only a positive input is given

# convert the integer into a string
# check to see if the string is the same as itself reversed

def palindromic_number?(an_integer)
  a_string = an_integer.to_s
  a_string == a_string.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
