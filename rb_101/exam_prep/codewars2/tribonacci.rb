# input: an array of three numbers, and n (represents how many elements
# of the sequence to return)
# output: the tribonacci sequence of length n starting with the sequence given (3 numbers)

# sequence = input array
# set a = sequence[0]
# set b = sequence[1]
# set c = sequence[2]
# set counter = 3
# while counter < n
#    a = b
#    b = c
#    c = a + b + c
#    sequence << a + b + c
#    increment counter
# return sequence[0, n]

def tribonacci(signature, n)
  sequence = signature.clone
  a = sequence[0]
  b = sequence[1]
  c = sequence[2]
  counter = 0
  while counter < n
    a, b, c = b, c, a + b + c
    sequence << c
    counter += 1
  end
  sequence[0,n]
end

p tribonacci([1, 2, 3], 10)