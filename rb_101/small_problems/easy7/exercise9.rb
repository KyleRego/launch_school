# input: 2 arrays of numbers
# output: a new sorted array that has the products of every pair of numbers from the two input arrays

# make an empty array return_array
# for each element in input array_1
#   for each element in input array_2
#     return_array << array_2 element * array_1 element
# return_array

def multiply_all_pairs(array_1, array_2)
  return_array = []
  array_1.each do |value1|
    array_2.each do |value2|
      return_array << value1 * value2
    end
  end
  return_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]