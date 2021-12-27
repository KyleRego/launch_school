# input: a positive integer
# output: the sum of the digits

# turn the integer into a string, split it into an array, 
# iterate over the array, convert each str-num back to a num
# add each to a return value

def sum(number)
  sum = 0
  number.to_s.split('').each do |num|
    num = num.to_i
    sum += num
  end
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45