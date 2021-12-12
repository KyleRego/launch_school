arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |arr|
  arr.select do |el|
    el % 3 == 0
  end
end

p arr
p new_arr
