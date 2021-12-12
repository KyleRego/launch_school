# input: a string of words separated by spaces
# output: the string where the first and last letters of every word are swapped

# split the input string into an array
# map over that array of words with a block that returns the word with its first and last letters swapped

def swap(words)
  words.split(' ').map do |word|
    if word.length > 1
      first_letter = word[0]
      last_letter = word[word.length - 1]
      middle_letters = word[1, word.length - 2]
      last_letter + middle_letters + first_letter
    else
      word
    end
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'