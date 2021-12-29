def neutralize(sentence)
  cleaned_words = []
  words = sentence.split(' ')
  words.each do |word|
    cleaned_words << word if !negative?(word)
  end

  cleaned_words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.