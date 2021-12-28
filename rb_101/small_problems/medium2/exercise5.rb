# input: three numbers
# output: a symbol:
# - :equilateral
# - :isosceles
# - :scalene
# - :invalid
# depending on what type of triangle the three numbers which 
# represent side lengths denotes

# call a fn to determine if its a valid triangle, if not return :invalid
# if all three sides are the same, return :equilateral
# if two of the sides are the same, return :isosceles
# return :scalene

# to determine if its a valid triangle
# put the three side lengths in an array
# sort the array
# check that the first two elements of the array added together 
# are greater than the third element of the array

def is_valid_triangle?(a, b, c)
  arr = [a, b, c]
  arr.sort!
  (arr[0] + arr[1]) > arr[2]
end

def triangle(a, b, c)
  if !is_valid_triangle?(a, b, c)
    :invalid
  elsif a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

p is_valid_triangle?(0, 3, 3) == false
p is_valid_triangle?(3, 1, 1) == false
p is_valid_triangle?(3, 3, 1.5) == true

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid