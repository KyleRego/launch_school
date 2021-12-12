# input: an array of numbers
# output: an array of running totals from the first array

# make an empty array to be the return array
# set a counter equal to 1
# until the counter is greater than the length of the array
#   slice the array from index 0 to index counter and append the sum into the return array
#   increment counter

def running_total(number_array)
  return_array = []
  counter = 1
  until counter > number_array.length
    return_array << number_array[0, counter].sum
    counter += 1
  end
  return_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
