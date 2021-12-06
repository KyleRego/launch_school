# P
# Rules
#  - Explicit
#  - input: two integers a , b
#  - output: integer that is the sum of all integers in the range [a, b]
#  - if a == b then return a or b

# make a range (inclusive) representing [a,b]
# return the sum of that range

def get_sum(a,b)
  a < b ? (a..b).sum : (b..a).sum
end

puts get_sum(-1, 0)