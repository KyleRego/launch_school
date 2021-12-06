def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end

  numbers
end

nums = [1, 2, 3, 4, 5]
double_numbers! nums
p nums