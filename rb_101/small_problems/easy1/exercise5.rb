# input: a string of words separated by spaces
# output: a string of the same words in reverse order

# split the string into an array of words
# reverse the array
# join the words of the array separated by spaces

def reverse_sentence(words)
  words.split(" ").reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''