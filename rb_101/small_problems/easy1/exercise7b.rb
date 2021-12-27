# input: a positive integer
# output: a string of alternating 1s and 0s, starting with 1, of length equal to the input

# initialize an empty string
# use integer#times on the input
#   if current number is even, append a 1
#   else append a 0

def stringy(number)
  return_string = ''
  number.times do |num|
    if num.even?
      return_string << '1'
    else
      return_string << '0'
    end
  end
  return_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
