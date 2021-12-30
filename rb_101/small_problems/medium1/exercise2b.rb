def rotate_rightmost_digits(number, n)
  to_not_rotate = number.to_s.chars[0...-n]
  to_rotate = number.to_s.chars[-n..-1]
  (to_not_rotate + rotate(to_rotate)).join.to_i
end

def rotate(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
