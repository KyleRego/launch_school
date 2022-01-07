# input: a number
# output: a multiple of three obtained by removing the last digit of the number

# while number
#   return number if number % 3 == 0
#   if number.to_s.length > 1
#     number = number.to_s.chars[0..-2].join.to_i
#   else
#     number = nil
# nil

def prev_mult_of_three(number)
  while number
    return number if number % 3 == 0
    if number.to_s.length > 1
      number = number.to_s.chars[0..-2].join.to_i
    else
      number = nil
    end
  end
  nil
end

p prev_mult_of_three(1)
p prev_mult_of_three(25)
p prev_mult_of_three(36)