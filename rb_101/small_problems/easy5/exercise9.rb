# input: a string
# output: the input string with all consecutive duplicate characters collapsed into one character

# make an empty string to be the return string
# remember the first character of the input string
# loop over the input string starting from the second character
#   if the character is not equal to the remembered character
#     append the character into the return string
#     remember the new character
#   else
#     move to the next character 

def crunch(a_string)
  return_string = ''
  remembered_char = ''
  a_string.each_char do |char|
    if char != remembered_char
      return_string << char
      remembered_char = char
    else
      next
    end
  end
  return_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''