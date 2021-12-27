# input: an integer (negative, positive, or zero)
# output: true if abs value of the input is odd

# convert the number to its absolute value
# see if the number modulo 2 is 1

def is_odd?(number)
  number = number.abs
  number % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true