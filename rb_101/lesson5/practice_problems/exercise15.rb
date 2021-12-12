arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

def contains_all_evens(num_array)
  for num in num_array do
    if !num.even?
      return false
    end
  end
  true
end

new_arr = arr.select do |hash|
  hash.values.all? do |number_array|
    contains_all_evens(number_array)
  end
end

p new_arr