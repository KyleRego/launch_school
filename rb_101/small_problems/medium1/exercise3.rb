
# set n = number.to_s.length
# while n > 0:
#   rotate_rightmost_digits(number, n)
#   n -= 1

def max_rotation(a_number)
  n = a_number.to_s.length
  return_value = a_number
  while n > 0
    return_value = rotate_rightmost_digits(return_value, n)
    n -= 1
  end
  return_value
end

def rotate_rightmost_digits(a_number, n)
  arr = a_number.to_s.split('')
  not_rotated = arr.slice(0, arr.length - n)
  rotated = rotate_array(arr.slice(arr.length - n , arr.length))
  (not_rotated + rotated).join('').to_i
end


def rotate_array(an_array)
  return_array = []
  an_array.slice(1, an_array.length - 1).each do |element|
    return_array << element
  end
  return_array << an_array[0]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845