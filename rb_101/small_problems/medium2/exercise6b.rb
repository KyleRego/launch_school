# input: three numbers representing angles
# output: :invalid, :right, :obtuse, or :acute

# check if the triangle is invalud
# if not:
#   return :right if one of the angles is right
#   return :obtuse if one of the angles is > 90
#   return :acute otherwise

def triangle(a, b, c)
  if invalid_triangle?(a, b, c)
    :invalid
  elsif a == 90 || b == 90 || c == 90
    :right
  elsif a > 90 || b > 90 || c > 90
    :obtuse
  else
    :acute
  end
end

def invalid_triangle?(a, b, c)
  ! ( a > 0 && b > 0 && c > 0 && (a+b+c) == 180 )
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
