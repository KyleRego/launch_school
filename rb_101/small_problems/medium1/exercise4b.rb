# input: a positive number n
# output: an array of 0s and 1s representing lights turned off and on

# rules:
# there are n passes down n lights
# on the ith pass, lights which are multiples of i are toggled

# initialize an array of 0s of length n
# 1.upto(n) times do a pass down the lights, pass number is i
# during each pass, for each light if the index of the light modulo i is 0 toggle it

def toggle(n)
  lights = [0] * n
  n.times do |iteration|
    pass_number = iteration + 1
    lights.each_with_index do |_, index|
      toggle_light(lights, index) if (index+1) % pass_number == 0
    end
  end
  indices_with_1s(lights)
end

def toggle_light(lights, i)
  if lights[i] == 0
    lights[i] = 1
  else
    lights[i] = 0
  end
end

def indices_with_1s(lights)
  return_arr = []
  lights.each_with_index do |value, index|
    return_arr << index + 1 if value == 1
  end
  return_arr
end

p toggle(5)
p toggle(10)