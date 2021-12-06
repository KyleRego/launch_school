def titleize(string)
  string.split(" ").map do |word|
    word.capitalize
  end.join(" ")
end

p titleize "the cat" # => "The Cat"