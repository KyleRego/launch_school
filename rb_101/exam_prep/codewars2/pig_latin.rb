# input: a string of words separated by spaces
# output: the string made by moving the first letter of each word to the end of it and ay to the end of the word
# ie. "Hello" => "elloHay"

def pig_latinize(word)
  return word if '!.,?'.include?(word)
  word[1..-1] + word[0] + 'ay'
end

def pig_it(text)
  text.split.map{ |word| pig_latinize(word) }.join(' ')
end
