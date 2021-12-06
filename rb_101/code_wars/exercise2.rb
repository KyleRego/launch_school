# Problem
# Rules
#  - Input: three integers a, b, c
#  - Output: true or false
#  - return true if a triangle can be made with the sides of given length
#  - in other words, return true if none of the three numbers is larger than the sum of the other two

# Algorithm
# for each of the three numbers
# if sum of the other two numbers if less than the number, return false
# return true 

def is_triangle(a, b, c)
  if a < 0 || b < 0 || c < 0
    return false
  end

  if a >= (b + c)
    return false
  elsif b >= (a + c)
    return false
  elsif c >= (a + b)
    return false
  end
  true
end

puts is_triangle(2, 2, 5) # => false
puts is_triangle(1, 2, 2) # => true
puts is_triangle(7, 2, 2) # => false
puts is_triangle(-2, 1, 1) # => false
puts is_triangle(9, 1, 10) # => false
