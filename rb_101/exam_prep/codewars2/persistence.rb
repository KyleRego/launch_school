# input: a positive number
# output: the number of times you must multiply the digits of number together to get a single digit

# input: number
# counter = 0
# start a loop
#   convert the number to an array of digits and reduce that into a single number by multiplication
#   counter += 1
#   assign number to the result of the above operation
#   if number.to_s.length == 1 then return counter

def persistence(number)
  counter = 0
  loop do
    return counter if number.to_s.length == 1
    number = number.digits.reduce(:*)
    counter += 1
  end
end
