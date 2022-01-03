# input: a string
# output: a score based on a sum of values where 
# each letter of the input string is worth its position
# in the alphabet i.e. a = 1, b = 2

# initialize a sum set equal to 0
# for each character of the string, convert it to its value and add to sum

# input: a string of words separated spaces
# output: the word with the highest score

# split the string of words into an array of words
# set a highest_score_word variable to the first word
# and a highest_score variable to the first word's score
# loop through the rest of the words and replace the variables
# if a word has a higher score 

HELPER = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4,
          'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8,
          'i' => 9, 'j' => 10, 'k' => 11, 'l' => 12,
          'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16,
          'q' => 17, 'r' => 18, 's' => 19, 't' => 20,
          'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24,
          'y' => 25, 'z' => 26}

def convert_to_value(word)
  sum = 0
  word.each_char do |char|
    val = HELPER[char]
    sum += val
  end
  sum
end

def high(words)
  words_array = words.split(' ')
  highest_word = ''
  highest_score = 0
  words_array.each do |word|
    score = convert_to_value(word)
    if score > highest_score
      highest_score = score
      highest_word = word
    end
  end
  highest_word
end

p convert_to_value('abc')
p high('man i need a taxi up to ubud')