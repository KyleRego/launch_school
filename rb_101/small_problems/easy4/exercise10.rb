DIGITS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
          6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(number)
  return '0' if number == 0
  number = number.abs
  return_string = ''
  while number != 0 do
    return_string.prepend(DIGITS[(number % 10)])
    number = number / 10
  end
  return_string
end

def signed_integer_to_string(number)
  sign(number) + integer_to_string(number)
end

def sign(number)
  if number > 0
    '+'
  elsif number < 0
    '-'
  else
    ''
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'