# input: a string
# output: the string with a 1 appended to it if it had no number at the end
# or the string with its number at the end incremented by 1

# chop the last character from the string and see if its a digit
# if its not, return the string concatenated with '1'
# if it is, save that digit and check the next digit

require 'pry'

def increment_string(input)
  if !string_ends_with_digit?(input)
    return input + '1'
  end
  number = string_ends_with_digit?(input)
  number_zeros = number.length - number.to_i.to_s.length 
  number_zeros -= 1 if number.end_with?('9')
  if number_zeros > 0
    input[0..-1 * (number.length + 1)] + '0' * number_zeros + (number.to_i + 1).to_s
  else
    input[0..-1 * (number.length + 1)] + (number.to_i + 1).to_s
  end
end

def string_ends_with_digit?(string)
  digits = ''
  loop do
    last_character = string[-1]
    if last_character.to_i.to_s == last_character
      digits << last_character
      string = string.chop
    else
      break
    end
  end
  return false if digits == ''
  digits.reverse
end

p string_ends_with_digit?('hello world')
p string_ends_with_digit?('hello world123')
p string_ends_with_digit?('foobar001')

p increment_string('hello world')
p increment_string('hello world123')

p increment_string('foobar002')
p increment_string('foobar00999')