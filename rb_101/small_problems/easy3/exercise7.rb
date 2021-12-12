# input: an array
# output: an array containing every other element of the input array, starting with the 1st

# set a counter equal to 0
# iterate over the input array
#   if the counter is even, append the element of the input array to the output array
#   increment the counter
# return the output array

def oddities(input)
  return_array = []
  counter = 0
  while counter < input.length
    if counter.even?
      return_array << input[counter]
    end
    counter += 1
  end
  return_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
