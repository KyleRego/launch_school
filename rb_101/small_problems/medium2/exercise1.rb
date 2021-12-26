FILENAME = "input.txt"

data = File.read(FILENAME)

data.gsub!(/[\n]/, ' ')

sentences = data.split(/\.|\?|!/)

max_sentence = ''
counter = 0
loop do
  if sentences[counter].length > max_sentence.length
    max_sentence = sentences[counter]
  end
  counter += 1
  break if counter == sentences.size
end
puts max_sentence