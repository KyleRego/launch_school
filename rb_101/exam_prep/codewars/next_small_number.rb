# input: a positive integer
# output: the next smallest number with the same digits as the input


# make an array with all numbers made by permutation of the digits
# sort the array
# find the index of the input number in the array
# return the element with index one less
# or if thats nil, return -1

def next_smaller(n)
  possible_numbers = n.to_s.chars.permutation.to_a.map(&:join)
  possible_numbers = possible_numbers.sort_by { |num_string| num_string.to_i }
  possible_numbers = possible_numbers.select { |num_string| num_string[0] != '0' }
  possible_numbers = possible_numbers.map(&:to_i)
  index = possible_numbers.index(n)
  index == 0 ? -1 : possible_numbers[index - 1]
end

p next_smaller(907) == 790
p next_smaller(531) == 513
p next_smaller(135) == -1
p next_smaller(2071) == 2017
p next_smaller(414) == 144
