# input: an integer
# output: true if number is a perfect square, false otherwise

# take the square root of the input and if its an integer return true

def is_square(x)
  return false if x < 0
  root = Math.sqrt(x)
  root % 1 == 0
end

is_square(9)
is_square(3)
is_square(-1)