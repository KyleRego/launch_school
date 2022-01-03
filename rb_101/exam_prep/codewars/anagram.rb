# input: two arguments which are strings
# output: true of false, depending on if the words are anagrams

# downcase both strings, convert to arrays so that they can be sorted, 
# and compare the sorted arrays compare to see if they are the same

def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end
