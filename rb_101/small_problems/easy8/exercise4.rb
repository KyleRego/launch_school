
# make an empty return array
# set index_counter = 0
# while index_counter < a_string.length
#   append leading_substrings(a_string.slice(index_counter..a_string.length))
#   incremenet index_counter
# return return array

def substrings(a_string)
  return_array = []
  counter_index = 0
  while counter_index < a_string.length
    sliced_string = a_string.slice(counter_index..a_string.length)
    leading_substrings(sliced_string).each do |substring|
      return_array << substring
    end
    counter_index += 1
  end
  return_array
end

def leading_substrings(a_string)
  accumulator = ''
  return_array = []
  a_string.each_char do |char|
    accumulator << char
    return_array << accumulator.clone
  end
  return_array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]