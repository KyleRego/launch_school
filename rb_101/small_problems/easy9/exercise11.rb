def anagrams?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def print_anagrams(words)
  printed_anagrams = []
  for word1 in words
    anagrams = []
    for word2 in words
      anagrams << word2 if anagrams?(word1, word2)
    end
    p anagrams if anagrams.size > 1 && !printed_anagrams.include?(anagrams)
    printed_anagrams << anagrams
  end
  nil
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

print_anagrams(words)

# for each word1 in words
#   initialize an array to hold the anagrams 'anagrams'
#   for each word2 in words
#      append word2 into 'anagrams' if anagrams?(word1, word2)
# if size of 'anagrams' > 1, puts `anagrams`

# anagrams? method
# input: two words
# output: true if they are anagrams, false if not

# split each word into an array, sort each array, check if they are equal

# p anagrams?('wood', 'wood') == true
# p anagrams?('demo', 'dome') == true
# p anagrams?('demo', 'wood') == false

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

# on line 40 we initialize a local variable `result` and assign it to be an empty hash
# we then call the `#each` method on the `words` array on line 42, and pass it a block argument.
# The block has a block parameter called `word`. Therefore on each iteration of `#each`, `word`
# will be assigned the current element of `words`.