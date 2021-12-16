arr = [1, 2, 3].map do |value|
  value * 2
end

arr_2 = {'a' => "Hello", 'b' => "World"}.map do |key, value|
  key + ' ' + value
end

p arr
p arr_2