# input: a positive integer n
# output: the difference between the square of the sum of the first n 
# positive integers and the sum of the squares of the first n pos ints

def sum_square_difference(n)
  square_of_sum(n) - sum_of_squares(n)
end

def square_of_sum(n)
  sum = 0
  n.times do |index|
    sum += index + 1
  end
  sum**2
end

def sum_of_squares(n)
  sum_of_squares = 0
  n.times do |index|
    sum_of_squares += (index + 1)**2
  end
  sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
