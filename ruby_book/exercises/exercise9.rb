h = {a:1, b:2, c:3, d:4}

val_of_b = h[:b]

puts val_of_b

h[:e] = 5

new_h = h.filter do |key, value|
  value >= 3.5
end

puts new_h