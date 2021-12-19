arr = [1, 2, 3, 4, 5]

arr.sort! do |a, b|
  b <=> a
end

p arr

arr = ['ha', 'ab', 'cf', 'rc']

arr.sort_by! do |str|
  str[1]
end

p arr
