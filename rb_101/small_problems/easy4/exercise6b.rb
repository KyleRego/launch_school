# input: an array of numbers
# output: an array with same number of elements, with running total from original array

# initialize a sum = 0
# initialize an empty return_array
# for each element of the input array
# add its value to the sum
# append the sum to the return_array

# def running_total(numbers)
#   sum = 0
#   running_totals = []
#   numbers.each do |num|
#     sum += num
#     running_totals << sum
#   end
#   running_totals
# end

def running_total(numbers)
  numbers.each_with_object([]) do |number, array|
    if array.size != 0
      array << array[-1] + number
    else
      array << number
    end
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
