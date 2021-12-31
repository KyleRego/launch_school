# input: a string of integers
# output: highest and lowest numbers

# split the string into an array of numbers
# map the array so that the strings are turned to integers
# sort the array
# return the last and first elements of the array

def high_and_low(numbers)
  numbers = numbers.split(' ').map(&:to_i).sort
  [numbers[-1], numbers[0]].map(&:to_s).join(' ')
end

p high_and_low("1 9 3 4 -5")