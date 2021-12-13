# input: 2 integers
# output: an array 
# with number of elements equal to the first integer, 
# where all elements are the multiples of the second integer

# initialize an empty array 'return_array'
# input integer 1 . times
#   return_array << integer 2 * index + 1
# return return_array

def sequence(count, starting_number)
  return_array = []
  count.times do |index|
    return_array << starting_number * (index + 1)
  end
  return_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
