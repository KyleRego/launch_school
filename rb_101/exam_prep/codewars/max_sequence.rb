# input: an array of positive and negative integers
# output: the maximum sum of a contiguous sub-array of the input
# return 0 if the list is made up of only negative numbers

# find all subarrays of the input array
# map over the subarrays to get an array of the sums
# return the max of the sums array

def subarrays(array)
  subarrays = []
  for i in (0 .. array.length - 1)
    for j in (i .. array.length - 1)
      subarrays << array[i..j]
    end
  end
  subarrays
end

def max_sequence(array)
  return 0 if array == []
  array_subsequences = subarrays(array)
  sums = array_subsequences.map { |subarray| subarray.sum }
  max = sums.max
  max > 0 ? max : 0
end

p subarrays([1, 2, 3])