# input: a positive number n
# output: the number of positive odd numbers below n

# n = 6 => 1 3 5 => 3
# n = 4 => 1 3 => 2
# when n is even, the number is n / 2
# when n is odd
# n = 5 => 1, 3 => 2
# n = 7 => 1, 3, 5 => 3

def odd_count(n)
  n / 2
end