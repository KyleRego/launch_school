# input: a positive integer
# output: an array holding numbers which represent which lights are on

# rules
#   the number of lights and the number of times we go through and toggle are equal

# initialize an array of length equal to the input where every element is 1
# perform a loop a number of times equal to the input
#   var = current iteration of the loop + 1
#   for every element of the array, if its index + 1 % var is 0 then switch it
# return an array of all the indices + 1 for which there is a 1

def toggle_lights(n)
  lights = [0] * n
  n.times do |num|
    var = num + 1
    light_index = 0
    loop do
      if (light_index + 1) % var == 0
        switch_light!(lights, light_index)
      end
      light_index += 1
      break if light_index == lights.size
    end
  end
  indices_of_ones(lights)
end

def indices_of_ones(arr)
  return_arr = []
  counter = 0
  loop do
    if arr[counter] == 1
      return_arr << (counter+1)
    end
    counter += 1
    break if counter == arr.size
  end
  return_arr
end

def switch_light!(lights, light_index)
  if lights[light_index] == 1
    lights[light_index] = 0
  else
    lights[light_index] = 1
  end
end

p toggle_lights(5)
p toggle_lights(10)