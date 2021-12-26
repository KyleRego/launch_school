# input: a string of some words and non-alphabetic characters
# output: same string as input with all non-alphabetic characters replaced by spaces

# make a string with all non-alphabetic characters
#   loop through that string and use gsub to replace that character in the input with whitespace

NONALPHABETIC = '!@#$%^&*()-_=+?/\'>.<,:;"{[}]|\}'

def cleanup(string)
  NONALPHABETIC.each_char do |char|
    string = string.gsub(char, ' ')
  end

  string.gsub(/[' ']+/, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
