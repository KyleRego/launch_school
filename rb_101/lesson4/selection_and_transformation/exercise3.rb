def double_numbers_with_odd_indices(numbers)
  counter = 0
  doubled_numbers = []

  loop do
    break if counter == numbers.length

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1

  end

  doubled_numbers
end

nums = [1, 2, 3, 4, 5]
p double_numbers_with_odd_indices nums



