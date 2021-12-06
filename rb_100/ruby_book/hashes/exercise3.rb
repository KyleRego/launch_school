h = {cat: "Butterscotch", dog: "Snickers", puppy: "Maisie"}

h.each do |key, value|
  puts key
end

h.each do |key, value|
  puts value
end

h.each do |key, value|
  puts "The key is #{key} and the value is #{value}."
end