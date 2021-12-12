# input: 2 arrays
# output: 1 array with all of the elements of the 2 arrays, sorted, no duplicates

# set return_arr = arr1
#   for each element in arr2, insert into return_arr
# return return_arr.uniq.sort

def merge(arr1, arr2)
  return_array = arr1
  arr2.each { |value| return_array << value }
  return_array.uniq.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]