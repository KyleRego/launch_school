# input: an array
# output: a new array, with the first element of the input array moved to the end and all elements shifted

# set return_array equal to an empty array
# iterate over the elements of input_array.slice(1, arr.length - 1)
#   append each element into the return_array
# append the first element of the input array into the return array
# return return_array

def rotate_array(an_array)
  return_array = []
  an_array.slice(1, an_array.length - 1).each do |element|
    return_array << element
  end
  return_array << an_array[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true