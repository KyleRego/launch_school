# input: a positive integer
# output: a list of the digits in that number

# convert the integer to a string and split into an array
# then use map to convert each element of the array back to an integer

def digit_list(number)
  number.to_s.split('').map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true