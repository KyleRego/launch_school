def titleize(words)
  words.split(' ').map { |word| word.capitalize }.join(' ')
end

p titleize "the cat" # => "The Cat"