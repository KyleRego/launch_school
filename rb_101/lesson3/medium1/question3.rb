def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

def factors2(number)
  divisor = number
  factors = []
  if number > 0
    loop do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
    if divisor == 0
      break
    end
  end

  factors
  end
end

p factors2(-5)
