# input: an integer
# output: index (starting from 1) of the first fibonacci number with number of digits equal to the input

# set counter equal to 1
# until num_digits(fibonacci(counter)) == input
#   counter += 1
# return counter

def fibonacci(n)
  if n==1 || n==2
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

def num_digits(number)
  number.to_s.size
end

def find_fibonacci_index_by_length(number_of_digits)
  counter = 1
  until num_digits(fibonacci(counter)) == number_of_digits
    counter +=1
  end
  counter
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847