# input: a positive integer
# output: the next bigger number made of the same digits

# make an array of all of the numbers that you can get by rearranging the digits
# in that array is the original number
# sort the array
# find the original number in it and return the next number
# if there is no next number, return -1

def next_number(number)
  possible_next_numbers = number.to_s.split('').permutation.to_a.map { |digit_array| digit_array.reduce(:+).to_i }
  possible_next_numbers.sort!
  index_of_number = possible_next_numbers.index(number)
  if possible_next_numbers[index_of_number + 1] && possible_next_numbers[index_of_number + 1] != number
    possible_next_numbers[index_of_number + 1]
  else
    -1
  end
end

p next_number(12) == 21
p next_number(513) == 531
p next_number(2017) == 2071
p next_number(9) == -1
p next_number(111) == -1
p next_number(531) == -1
