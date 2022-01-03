# input: an array of integers
# output: the minimum sum obtained from summing products of two integers from the array

# sort the array
# set i = 0
# set j = array.length - 1
# sum = 0
# while i < array.length / 2
#   sum += array[i] * array[j]
#   i += 1
#   j -= 1
# return sum

def min_sum(arr)
  arr = arr.sort
  sum = 0
  i = 0
  j = arr.length - 1
  while i < arr.length / 2
    sum += arr[i] * arr[j]
    i += 1
    j -=1
  end
  sum
end

p min_sum([5, 4, 2, 3])
