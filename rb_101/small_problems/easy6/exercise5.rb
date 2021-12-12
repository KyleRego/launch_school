# input: an array arr
# output: a new array with the elements of the input array but reversed

# make an empty array return_arr
# set counter equal to arr.length - 1
# while counter >= 0
#   return_arr << arr[counter]
#   counter -= 1
# return return_arr

def reverse(arr)
  return_arr = []
  counter = arr.length - 1
  while counter >= 0
    return_arr << arr[counter]
    counter -= 1
  end
  return_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true