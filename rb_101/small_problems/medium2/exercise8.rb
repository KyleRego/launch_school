require 'pry'

def featured(number)
  return_num = number
  loop do
    return_num += 1
    return return_num if is_featured_number?(return_num)
    break if return_num > 9_876_543_210
  end
  "There is no possible number that fulfills those requirements"
end

def is_featured_number?(number)
  number.odd? && number % 7 == 0 && unique_digits?(number)
end

def unique_digits?(number)
  number.to_s.length == number.to_s.chars.uniq.length
end

p unique_digits?(11)
p unique_digits?(133)
p unique_digits?(50)

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements