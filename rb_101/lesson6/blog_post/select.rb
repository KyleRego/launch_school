arr = [1, 2, 3].select do |value|
  puts value
end

hsh = {'a' => "Hello", 'b' => "World"}.select do |key, value|
  key == 'a'
end

p arr
p hsh