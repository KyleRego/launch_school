# input: a positive intege
# output: the next larger number than the input that is:
# 1) odd 2) a multiple of 7 3) whose digits occur once each

def featured_number?(number)
  number.odd? && (number % 7 == 0) && number.to_s.length == number.digits.uniq.size
end

def featured(n)
  (n+1).upto(9876543210) do |num|
    return num if featured_number?(num)
  end
  "There is no possible number that fulfills those requirements"
end

p featured_number?(21) == true
p featured_number?(12) == false
p featured_number?(35) == true
p featured_number?(21) == true

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements