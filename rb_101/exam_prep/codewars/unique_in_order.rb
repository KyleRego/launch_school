# input: a string of chars
# output: an array of chars in same order as string but no same
# element can appear in a row

# make an empty array return_array
# make a last_char variable and set equal to nil
# string.each_char do |char|
#   if char != last_char
#     return_array << char
#     last_char = char

def unique_in_order_string(string)
  return_array = []
  last_char = nil
  string.each_char do |char|
    if char != last_char
      return_array << char
      last_char = char
    end
  end
  return_array
end

def unique_in_order(sequence)
  if sequence.class == String
    unique_in_order_string(sequence)
  else
    unique_in_order_array(sequence)
  end
end

p unique_in_order('AAAABBBCCDAABBB')