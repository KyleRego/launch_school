arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |value|
  value.start_with?("s")
end

puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |value|
  value.start_with?("s") || value.start_with?("w")
end

puts arr