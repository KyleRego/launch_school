def string_to_signed_integer(numeric_string)
  sign(numeric_string) * string_to_integer(numeric_string)
end

def sign(numeric_string)
  if numeric_string[0] == '-'
    -1
  else
    1
  end
end

def convert_letter_to_integer(letter)
  case letter
  when '0'
    0
  when '1'
    1
  when '2'
    2
  when '3'
    3
  when '4'
    4
  when '5'
    5
  when '6'
    6
  when '7'
    7
  when '8'
    8
  when '9'
    9
  end
end

def string_to_integer(numeric_string)
  if numeric_string[0] == '+' || numeric_string[0] == '-'
    numeric_string = numeric_string[1..-1]
  end
  sum = 0
  numeric_string.split('').reverse.each_with_index do |letter, index|
    number = convert_letter_to_integer(letter)
    sum +=  number * (10 ** index)
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100