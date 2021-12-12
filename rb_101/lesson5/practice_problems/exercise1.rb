arr = ['10', '11', '9', '7', '8']

arr.sort! do |num_string1, num_string2|
  num_string2.to_i <=> num_string1.to_i
end

p arr
