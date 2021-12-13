# input: an array of numbers
# output: a number, that is the sum of all the sums of leading subsequences of the input array

# set sum equal to 0
# set counter equal to 0
# while counter < length of array
#   add to sum the sum of all elements from 0 to counter

def sum_of_sums(array_of_numbers)
  sum = 0
  counter = 0
  while counter < array_of_numbers.size
    sum += array_of_numbers.slice(0..counter).reduce(:+)
    counter += 1
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
