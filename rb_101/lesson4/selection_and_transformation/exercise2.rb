def double_numbers!(numbers)
  numbers.map! { |number| number*2 }
end

nums = [1, 2, 3, 4, 5]
double_numbers! nums
p nums