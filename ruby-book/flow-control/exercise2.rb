def loud_string(words)
  if (words.length > 10)
    words.upcase
  else
    words
  end
end

puts loud_string "Kyle"
puts loud_string "Hello world foo bar"