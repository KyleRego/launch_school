arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select do |number|
  number % 2 == 1
end

puts new_arr