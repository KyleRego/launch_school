flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def index_of_word_that_starts_with_Be(array_of_words)
  counter = 0

  while counter < array_of_words.size
    word = array_of_words[counter]
    return counter if word.start_with?("Be")
    counter += 1
  end
  nil
end

index = index_of_word_that_starts_with_Be(flintstones)

puts index