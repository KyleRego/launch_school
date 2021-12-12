
# convert the number to a string
# split the string into an array
# slice the array by arr.slice(arr.length - 1 - n , arr.length - 1)
# return arr.slice(0 , arr.length - 1 - n) + rotate_array(above)

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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917