# input: an array
# output: the same array, with elements reversed

# set a counter equal to 0 
# set a second counter2 equal to arr.length - 1
# while counter != arr.length / 2
#   switch the elements pointed to by counter and counter2
# return arr

def reverse!(arr)
  counter = 0
  counter2 = arr.length - 1
  while counter != arr.length / 2
    arr[counter], arr[counter2] = arr[counter2], arr[counter]
    counter += 1
    counter2 -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
