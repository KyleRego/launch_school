# input: three numbers
# output: :equilateral, :isosceles, :scalene, or :invalid based on what kind
# of triangle is represented by the three numbers if they are side lengths

# check if the triangle is invalid, if not:
# return :equilateral if all three sides are the same
# return :isosceles if two sides are the same
# else return :scalene

def triangle(a, b, c)
  if invalid_triangle?(a, b, c)
    :invalid
  elsif a == b && b == c && a == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

def invalid_triangle?(a, b, c)
  arr = [a, b, c].sort
  arr[0] + arr[1] <= arr[2]
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid