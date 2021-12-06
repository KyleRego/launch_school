# input: a string of words separated by spaces
# output: a string of the same words, but with words >= 5 characters reversed

# split the given string into an array of words
# map the array of words into a new array with words >= 5 characters reversed
# join the new array of words into a string and return it

def reverse_words(words)
  words.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS