# input: a positive integer
# output: a string of alternating 1s and 0s of length equal to the input
# - the string begins with a 1


# initialize an empty string 'return string'
# initialize a counter
# while the counter is less than the input integer
#   if the counter is even, append a 1 to the 'return string'
#   if the counter is odd, append a 0 to the 'return string'
# return the 'return string'

def stringy(number)
  return_string = ''
  counter = 0

  while counter < number
    return_string << "1" if counter.even?
    return_string << "0" if counter.odd?
    counter += 1
  end
  return_string
end

def stringy2(number)
  return_string = ''

  number.times do |index|
    number_to_append = index.even? ? "1" : "0"
    return_string << number_to_append
  end

  return_string
end


puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'