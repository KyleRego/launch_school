def multiply(numbers, multiplier)
  numbers.map { |number| number * multiplier }
end

nums = [1, 2, 3, 4, 5]
p multiply nums, 3
