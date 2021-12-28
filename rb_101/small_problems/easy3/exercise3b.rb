# input: a string
# output: the number of characters not including spaces

# use each_char to iterate over the string
# if its not a space, increment counter by 1

def number_of_characters(string)
  count = 0
  string.each_char do |char|
    if char != ' '
      count += 1
    end
  end
  count
end

print 'Please write word or multiple words: '
input = gets.chomp
chars = number_of_characters(input)
puts "There are #{chars} characters in \"#{input}\"."
