# input: a string of words separated by spaces
# output: the same string with every other word reversed
# the second word will be the first one reversed

def reverse_alternate(str)
  new_str = []
  reverse_word = false
  str.split(' ').each do |word|
    if reverse_word
      new_str << word.reverse
    else
      new_str << word
    end
    reverse_word = ! reverse_word
  end
  new_str.join(' ')
end