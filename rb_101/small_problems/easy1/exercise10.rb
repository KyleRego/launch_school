# input: a positive integer and a boolean
# output: 0 if given boolean == false, half the positive integer if boolean == true

# use an if statement
# if given boolean was true, return half the positive integer
# else return 0

def calculate_bonus(number, true_or_false)
  if true_or_false == true
    return number / 2
  else
    return 0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
