# input: a string of words separated by spaces
# output: a hash where keys are sizes (integers) and values are how many words were that size (integer)

# algorithm:
# make an empty hash to be the return value
# split the input string into an array of words
# iterate over the array of words
# for each word, get its length. check if its length is a key in the hash
#   if its length is a key in the hash, increment the value of the key
#   else set the key in the hash to have a value of 1

def word_sizes(a_string_of_words)
  return_hash = {}
  a_string_of_words.split(' ').each do |word|
    if return_hash.keys.include?(word.length)
      return_hash[word.length] += 1
    else
      return_hash[word.length] = 1
    end
  end
  return_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}