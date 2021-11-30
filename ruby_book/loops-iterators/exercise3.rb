def recursive_count_to_zero(number)
  puts number
  if number != 0
    recursive_count_to_zero(number-1)
  end
end

recursive_count_to_zero(10)