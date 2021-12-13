# input: a string
# output: an array containing every word with appended space and its length

# split the string into an array of words
# make an empty array to be the return value
# for each string in the array of words
#   append into the return value an interpolated string with the space and length
# return the return value

def word_lengths(string)
  return_array = []
  string.split.each do |word|
    return_array << "#{word} #{word.length}"
  end
  return_array
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []