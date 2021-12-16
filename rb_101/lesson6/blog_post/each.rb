arr = [1, 2, 3].each do |value|
  puts value
end

hsh = {'a' => "Hello", 'b' => "World"}.each do |key, value|
  puts "The key is #{key} and the value of this key is #{value}."
end

p arr
p hsh