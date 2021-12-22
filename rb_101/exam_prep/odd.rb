def is_odd?(number)
  number.abs % 2 == 1
end

puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# On line 5, the is_odd? method is invoked with the integer argument 2.
# Method definition of `is_odd?` is on lines 1-3. On line 1, we see that
# `is_odd?` has one parameter, `number`. Therefore on line 1, the local
# variable `number` is initialized and assigned to the value 1.
# on line 2, the `Integer#abs` method is called on `number`, this returns
# the absolute value of the caller. Then the modulo operator is used.
# Since we used the Integer#abs method to make sure the number is positive,
# we don't need to worry about how negative numbers would work with this operator.
# The operator takes the dividend on the left and the modulus on the right and 
# returns the remainder of the division operation between them. If this is 1,
# then the number was odd, So by comparison using the `==` operator, the
# `number.abs % 2 == 1` returns true if the number is odd and false if it is even.