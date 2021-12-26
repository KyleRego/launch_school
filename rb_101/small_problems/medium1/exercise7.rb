def word_to_digit(string)
  string = string.gsub('one', '1')
  string.gsub!('two', '2')
  string.gsub!('three', '3')
  string.gsub!('four', '4')
  string.gsub!('five', '5')
  string
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
