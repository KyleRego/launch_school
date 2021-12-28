# input: an array
# output: an array with every other element of the input array

# initialize a counter set equal to 0
# initialize a new return_array
# iterate through the array and if the counter is even, append the value into the return_array
# return the return_array

def oddities(array)
  return_array = []
  array.each_with_index do |value, index|
    return_array << value if index.even?
  end
  return_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
