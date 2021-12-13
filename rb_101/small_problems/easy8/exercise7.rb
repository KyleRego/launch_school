# input: a string
# output: a string with every character from the input doubled

# set return_string to an empty string
# input_string.each_char do
#   append char * 2 into the return_string
# return the return_string

def repeater(a_string)
  return_string = ''
  a_string.each_char do |char|
    return_string << char * 2
  end
  return_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''