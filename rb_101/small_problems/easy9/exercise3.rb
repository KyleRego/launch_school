# input: a number
# output: a number; 
#  if input is positive, return negative of it, 
#  if input is 0 or negative, return the original number

def negative(number)
  (number > 0) ? number * -1 : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby