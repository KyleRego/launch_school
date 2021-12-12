# input: a string
# output: an integer, the number of characters in the string

# set a counter equal to 0
# loop over each character of the string
#   if the character is not a space, increment counter
# return the counter

def number_of_characters(a_string)
  counter = 0
  for character in a_string.split('') do
    if character != ' '
      counter += 1
    end
  end
  counter
end

print 'Please write word or multiple words: '
input = gets.chomp

output = number_of_characters(input)
puts "There are #{output} characters in \"#{input}\"."