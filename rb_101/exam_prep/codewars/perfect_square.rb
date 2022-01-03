# input: an integer  n
# output: -1 if input is not a perfect square
# output: the next perfect square if input is a perfect square

# return -1 if Math.sqrt(n) % 1 != 0
# set var = n + 1
# loop do
#   return var if Math.sqrt(var) % 1 == 0
#   var += 1
# end

def find_next_square(sq)
  return -1 if Math.sqrt(sq) % 1 != 0
  var = sq + 1
  loop do
    return var if Math.sqrt(var) % 1 == 0
    var += 1
  end
end
