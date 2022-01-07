# input: a string of words
# output: the length of the shortest word

# split the string into an array of words
# map over the array of words and get an array of word lengths
# return the minimum length from the array of word lengths

def find_short(string)
  array_of_words = string.split(' ')
  word_lengths = array_of_words.map { |word| word.length }
  word_lengths.min
end

