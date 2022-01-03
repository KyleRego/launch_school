# input: a positive integer
# output: the largest positive integer you can get by rearranging the digits of the input

# cast the input into a string, split it into an array, map the array back into integers, sort it, convert back to strings, join it, and convert to a integer

def max_number(n)
  n.to_s.chars.map(&:to_i).sort.reverse.map(&:to_s).join.to_i
end

p max_number(123)