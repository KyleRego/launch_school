statement = "The Flintstones Rock"

hash = statement.chars.each_with_object({}) do |char, hash|
  if hash[char]
    hash[char] += 1
  else
    hash[char] = 1
  end
end

hash.delete(' ')

p hash
