# input: a positive integer n
# output: the number of divisors the input has

# initialize divisors to be an empty array
# 1.upto(n)
#   check if the current number is a divisor with modulo operator
#   if it is, append the number into divisors array
# return how many elements are in divisors array

def divisors(n)
  divisors_array = []
  1.upto(n) do |num|
    divisors_array << num if n % num == 0
  end
  divisors_array.count
end

p divisors(4)