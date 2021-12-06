# input: a positive integer
# output: an integer, the sum of the digits of the input


# convert the integer into a string
# split the string into an array of characters
# iterate over the array getting the sum of each character converted to an integer
# return that sum

def sum(number)
  sum = 0
  number.to_s.chars.each do |digit|
    sum += digit.to_i
  end
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
