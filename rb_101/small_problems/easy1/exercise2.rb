# input: one intger argument
# - may be zero, negative, or positive
# output: true if absolute value of input is odd

# initialize a new variable to be the absolute value of the input
# return 'new variable' modulus 2 == 1 
# 

def is_odd?(number)
  absolute_number = number.abs
  absolute_number % 2 == 1
end

p is_odd?(-17)
p is_odd?(15)
p is_odd?(0)
