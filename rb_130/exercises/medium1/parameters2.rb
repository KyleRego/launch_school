def my_method(array)
  yield(array)
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

value = my_method(arr) do |arr|
  first, second, *raptors = arr
  puts raptors
end
