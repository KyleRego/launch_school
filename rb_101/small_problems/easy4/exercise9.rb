# input: a positive integer or 0
# output: a string representation of the input number

# return_string = ''
# while number / 10 != 0
#   return_string prepend number % 10 as a string
#   number = number / 10

DIGITS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
          6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(number)
  return '0' if number == 0
  return_string = ''
  while number != 0 do
    return_string.prepend(DIGITS[(number % 10)])
    number = number / 10
  end
  return_string
end



p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'