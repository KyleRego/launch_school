def accumulate_letters(array_of_letters)
  array_of_letters.reduce('') do |accumulator, current_letter|
    accumulator + current_letter
  end
end

def sum_numbers(array_of_numbers)
  array_of_numbers.reduce(0) do |accumulator, current_number|
    accumulator + current_number
  end
end

def multiply_all_numbers(array_of_numbers)
  array_of_numbers.reduce(1) do |accumulator, current_number|
    accumulator * current_number
  end
end

def how_many_more_than_ten(array_of_numbers)
  array_of_numbers.reduce(10) do |acc, current_num|
    acc + current_num
  end
end

puts accumulate_letters(['h', 'e', 'l', 'l', 'o'])
puts sum_numbers([1, 2, 3])
puts multiply_all_numbers([1, 2, 3, 4])
puts how_many_more_than_ten([1])
