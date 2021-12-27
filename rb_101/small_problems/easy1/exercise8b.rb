# input: an array of integers
# output: the average of all the numbers in the array

# initialize a sum equal to 0
# iterate over the array and add each value to the sum
# return the sum divided by the length of the array

def average(numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum / numbers.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40