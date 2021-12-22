def digit_list(number)
  number.to_s.split('').map { |num_string| num_string.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# the method `digit_list` is defined with one parameter: `number`
# the first thing that happens when `digit_list` is invoked with
# an integer argument, is `number` is initialized and assigned
# to that integer argument. `number` is a variable local to the 
# scope created by the `digit_list` method definition. Next the
# `Integer#to_s` method is called on `number` to give a return value
# that is a string. next the String#split method is called on this
# string (the return value of to_s) thus giving a return value 
# which is an array of all the digits, each digit still being a string
# the final step is to call the #map method on this array. we pass a block
# to #map as an argument, and the block parameter `num_string` is initialized
# and assigned each value from the array that #map is called on in sequence.
# The return value of #map is an array with all of the return values of the block
# for each element of the array it was called on. The block simply takes the
# block argument and converts it from a string to an integer. Thus the `digit_list`
# method converts the number into an array of all its digits, where each element is an integer