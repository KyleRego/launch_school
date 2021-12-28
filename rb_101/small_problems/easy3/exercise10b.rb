# input: a number
# output: true or false depending on if the input is palindromic

# convert the number to a string, check if its equal to itself reversed

def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
