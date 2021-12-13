# input: two arrays of numbers
# output: a new array of the products of elements with the same index from the input arrays

# assume both arrays are the same length

# set counter = 0
# initialize a new array 'return_array'
# while counter < length of one of the arrays
#   return_array << arr1[counter]*arr2[counter]
#   increment counter
# return return_array


def multiply_list(arr1, arr2)
  counter = 0
  return_arr = []
  while counter < arr1.length do
    return_arr << arr1[counter] * arr2[counter]
    counter += 1
  end

  return_arr
end

def multiply_list_2(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end


p multiply_list_2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
