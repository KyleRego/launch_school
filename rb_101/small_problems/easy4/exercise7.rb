# input: a string of numeric characters
# output: an integer

# string_to_integer:
# make a variable called sum and set equal to 0
# split the input string into an array of characters and reverse it
# use #each to loop over the array of characters
# add to sum 10 raised to the index times the character converted to an integer
# return the sum

# convert_letter_to_integer(letter):
# case letter
# when "1"
#   1
# etc.

def convert_letter_to_integer(letter)
  case letter
  when '0'
    0
  when '1'
    1
  when '2'
    2
  when '3'
    3
  when '4'
    4
  when '5'
    5
  when '6'
    6
  when '7'
    7
  when '8'
    8
  when '9'
    9
  end
end

def string_to_integer(numeric_string)
  sum = 0
  numeric_string.split('').reverse.each_with_index do |letter, index|
    number = convert_letter_to_integer(letter)
    sum +=  number * (10 ** index)
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
