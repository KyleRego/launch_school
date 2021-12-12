# input: 2 arrays
# output: a new array with all the elements of the two input arrays, alternating
# assumptions
#   both arrays are non empty
#   both arrays have the same number of elements

# set a counter equal to 0
# make a new empty array 'return_array'
# while counter < length of one of the input arrays
#   return_array << arr1[counter]
#   same for arr2
#   increment counter
# return return_array

def interleave(array_1, array_2)
  return_array = []
  counter = 0
  while counter < array_1.length
    return_array << array_1[counter]
    return_array << array_2[counter]
    counter += 1
  end
  return_array
end

def interleave_2(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave_2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
