def multiply(numbers, multiply_by)
  counter = 0
  multiplied_numbers = []

  loop do
    break if counter == numbers.length

    current_number = numbers[counter]
    multiplied_numbers << current_number * multiply_by

    counter += 1
  end

  multiplied_numbers
end

nums = [1, 2, 3, 4, 5]
p multiply nums, 3
