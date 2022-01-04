# input: an array of integers
# output: the maximum sum of a subarray from the input

# find all subarrays of the array
# iterate over them and find the one with the biggest sum

def max_sequence(array)
  return 0 if array == []
  subarrays_array = subarrays(array)
  sums = subarrays_array.map do |subarray|
    subarray.sum
  end
  sum = sums.max
  sum < 0 ? 0 : sum
end

def subarrays(array)
  subarrays_array = []
  for i in (0..array.length - 1)
    for j in (i..array.length - 1)
      subarrays_array << array[i..j]
    end
  end
  subarrays_array
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12