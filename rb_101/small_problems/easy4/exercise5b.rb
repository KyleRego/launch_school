# input: a positive integer
# output: the sum of all multiples of 3 or 5 that lie between 1 and the input number

# make an empty array
# iterate from 1 up to the input number
# if the number is a multiple of 3 or 5, add it to the array
# return the sum of all elements in the array

def multisum(number)
  arr = []
  1.upto(number) do |num|
    arr << num if (num % 3 == 0) || (num % 5 == 0)
  end
  arr.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
