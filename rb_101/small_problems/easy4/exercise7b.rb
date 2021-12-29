# input: a string of digits
# output: a number (integer)

# initialize an integer variable to be 0 to be the return value
# iterate through the input string reversed by character
# add to the integer variable the character converted to a number times 10 to the power of the index of iteration
# convert single string number to a real number by a hash

HELPER = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
          '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}

def string_to_integer(string)
  return_number = 0
  string.chars.reverse.each_with_index do |char, index|
    return_number += HELPER[char] * (10**index)
  end
  return_number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
