def double_numbers_with_odd_indices(numbers)
  doubled_numbers = []
  numbers.each_with_index do |number, index|
    if index.odd?
      doubled_numbers << number * 2
    else
      doubled_numbers << number
    end
  end
  doubled_numbers
end

nums = [1, 2, 3, 4, 5]
p double_numbers_with_odd_indices nums
