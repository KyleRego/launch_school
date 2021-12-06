arr = [1, 2, 3, 4, 5]
arr2 = []

arr.each_with_index do |val, index|
  arr2[index] = val + 2
end

puts "#{arr}"
puts "#{arr2}"
