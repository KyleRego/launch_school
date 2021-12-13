# input: a string
# output: an array of the leading substrings of the input string

# set accumulator = ''
# set return_array = []
# for each character in the input string
#   append the character into the accumulator
#   append the accumulator into the return_array

def leading_substrings(a_string)
  accumulator = ''
  return_array = []
  a_string.each_char do |char|
    accumulator << char
    return_array << accumulator.clone
  end
  return_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']