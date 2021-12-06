
# input: a positive integer
# output: a list of digits in the number

# convert the input to a string
# split the string into an array of its chars
# map the array of chars into an array of numbers
# return the array

def digit_list(number)
  number_string = number.to_s
  digit_array = number_string.chars
  digit_array.map do |digit_string|
    digit_string.to_i
  end
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true