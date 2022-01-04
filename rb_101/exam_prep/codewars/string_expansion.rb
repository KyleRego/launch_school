# input: a string of letters and integers
# output: the string expanded so that each letter appears a number of times 
# equal to the number that appeared before it

# have a variable 'number' keep track of the current number
# initialize a return_string and set equal to an empty string
# for each character of the string
#   if the character is a number, set number equal to it
#   if the character is a letter, append that letter 'number' times into a return_string
# return return_string

def string_expansion(s)
  number = 1
  return_string = ''
  s.each_char do |char|
    if ('0'..'9').include?(char)
      number = char
    else
      number.to_i.times { |_| return_string << char }
    end
  end
  return_string
end

p string_expansion('3abc4d')
