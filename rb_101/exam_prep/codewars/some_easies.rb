# input: an array of integers
# output: the sum of all positive integers in the input array

# set sum equal to 0
# for each element of the input array
#   add it to sum if its positive
# return sum

def positive_sum(arr)
  sum = 0
  arr.each do |number|
    sum += number if number > 0
  end
  sum
end

# input: an integer or float
# output: the number multiplied by -1

def opposite(number)
  number * -1
end

# input: a boolean value
# output: a string: "Yes" for true "No" for false

def bool_to_word(bool)
  bool ? "Yes" : "No"
end

# input: a string and an integer n
# output: a string where the given string is repeated n times

def repeat_str(n, s)
  s * n
end

# input: a number
# output: a string

def number_to_string(num)
  num.to_s
end

# input: a positive integer
# output: the sum of all intgers from 1 to the input inclusive

# set sum equal to 0
# 1.upto(num) do |n|
#   sum += n
# return sum

def summation(num)
  sum = 0
  1.upto(num) do |n|
    sum += n
  end
  sum
end

# input: an array of integers
# output: the smallest integer in the input array

def find_smallest_int(arr)
  arr.min
end

# input: a string with spaces
# output: same string with spaces removed

def no_space(str)
  new_str = ''
  str.each_char do |char|
    new_str += char if char != ' '
  end
  new_str
end

# input: a time in hours, may be a float
# output: 0.5 liters x hours rounded down to the nearest integer

def litres(time)
  (time * 0.5).floor
end

# input: a positive integer or 0
# output: an array with the digits of the input, but reversed

def digitize(n)
  n.digits
end

def past(h, m, s)
  (h * 3600 + m * 60 + s) * 1000
end

def solution(sentence)
  sentence.split(' ').reverse.join(' ')
end

# input: a integer x and another integer n
# output: a array of the multiples of the first integer with number
# of elements equal to the second integer
# i.e. 2, 5 => [2, 4, 6, 8, 10]

# set return_arr equal to an empty array
# n.times do |counter|
#   return_arr << x * (counter + 1)
#

def count_by(x, n)
  return_arr = []
  n.times do |counter|
    return_arr << x * (counter + 1)
  end
  return_arr
end