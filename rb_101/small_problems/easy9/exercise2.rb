# input: a number
# output: 2 times the number provided unless it is a "double number"

# check if the number is a double number
# if it is, return it
# else, return it times 2

# double_number?
# check if the number is even in length
#   if not, return false
# convert the number to a string and 
# return the value of if the first half of the string is equal to the second half

def twice(number)
  if double_number?(number)
    number
  else
    number * 2
  end
end

def double_number?(number)
  number_string = number.to_s
  if number_string.length.odd?
    return false
  else
    len = number_string.length
    return number_string[0, len/2] == number_string[len/2, len/2]
  end
end

p double_number?(37) == false
p double_number?(44) == true
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
