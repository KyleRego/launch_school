def joinor(number_array, delimiter=', ', final='or')
  if number_array.size == 1
    number_array[0].to_s
  elsif number_array.size == 2
    "#{number_array[0]} #{final} #{number_array[1]}"
  elsif number_array.size > 2
    first_part = number_array[0..-2].join(delimiter)
    second_part = "#{delimiter}#{final} #{number_array[-1]}"
    first_part + second_part
  end
end

p joinor([5])
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
