# input: an array with three integers
# output: the index of the middle integer

# make a new array by sorting the original array
# get the second element of the sorted array
# find the index of that element in the original array and return it

def gimme(input_array)
  sorted_array = input_array.sort
  middlemost = sorted_array[1]
  input_array.index(middlemost)
end

p gimme [4, 10, 1]