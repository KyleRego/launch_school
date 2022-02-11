# input: an array of numbers and an integer
# output: an array of arrays where each array has
# integer number of elements from original array

# algorithm - function of array and integer
# set return_array = []
# set counter = 0
# while counter < array.size - integer
#  return_array << array[counter, integer]
#  counter += 1

# def slices(array, integer)
#   return_array = []
#   counter = 0
#   while counter <= array.size - integer
#     return_array << array[counter, integer]
#     counter += 1
#   end
#   return_array
# end

# p slices([1, 2, 3], 1)
# p slices([1, 2, 3, 4], 2)
# p slices([1, 2, 3, 4], 3)

class Series
  def initialize(number_string)
    @number = number_string
  end

  def slices(integer)
    array = @number.split('').map(&:to_i)
    raise ArgumentError if integer > array.size
    return_array = []
    counter = 0
    while counter <= array.size - integer
      return_array << array[counter, integer]
      counter += 1
    end
    return_array
  end
end
