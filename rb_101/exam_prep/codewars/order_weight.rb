# input: a string of positive integers separated by spaces
# output: a string of the same positive integers separated 
# by spaces but ordered by the sum of digits of each number

# split the string of positive integers into an array
# map the array into an array of numbers
# sort_by the array of numbers by the sum of all the digits
# map the array back into an array of strings
# join the array together separated by a space

def order_weight(string)
  array = string.split(' ')
  array.map! { |num_string| num_string.to_i }
  array.sort_by! { |number| [number.digits.reduce(:+), number.to_s] }
  array.map! { |number| number.to_s }
  array.join(' ')
end
