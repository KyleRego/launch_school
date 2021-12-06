# input: an array of integers
# output: an integer, that is the average of all the integers in the input array

# initialize a variable set equal to 0 'return_integer'
# iterate over the array of integers and add each integer to 'return_integer'
# set 'return_integer' equal to itself divided by the length of the input array

def average(ary)
  return_integer = 0
  ary.each { |num| return_integer += num }
  return_integer /= ary.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40