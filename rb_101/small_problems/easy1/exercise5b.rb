# input: a string of space separated words
# output: a string with the words in reverse order

# split the string into an array of words, reverse the array, 
# then join the array into a string

def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''