# input: a string with two words separated by a space
# output: two capital letters (the first letter of each word) separated by a .

# split the input string into an array of two words
# initialize a return string set to an empty string
# append the first letter of the first word capitalized into the return string
# append a period into the return string
# append the first letter of the second word capitalized into the return string

def abbrev_name(two_words)
  return_string = ''
  word_array = two_words.split(' ')
  return_string << word_array[0].chr.upcase
  return_string << '.'
  return_string << word_array[1].chr.upcase
  return_string
end

p abbrev_name('patrick feeney')