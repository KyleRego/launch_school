# input: a string
# output: a new string, same as input string except every word is capitalized

# initialize an empty array, return_value
# split the input string into an array
# use each to iterate over the array, upcase each word and append the word into return_value
# return return_value.join

def word_cap(a_string)
  new_words = []
  a_string.split(' ').each do |word|
    new_words << word.capitalize
  end

  new_words.join(' ')
end

def word_cap_2(a_string)
  new_words = a_string.split(' ').map do |word|
    word.capitalize
  end

  new_words.join(' ')
end

def word_cap_3(a_string)
  new_words = a_string.split(' ').map(&:capitalize)
  new_words.join(' ')
end

p word_cap_3('four score and seven') == 'Four Score And Seven'
p word_cap_3('the javaScript language') == 'The Javascript Language'
p word_cap_3('this is a "quoted" word') == 'This Is A "quoted" Word'
