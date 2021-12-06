statement = "The Flintstones Rock"

hash = {}

for letter in statement.delete(" ").chars
  if hash.keys.include?(letter)
    hash[letter] += 1
  else
    hash[letter] = 1
  end
end

p hash
