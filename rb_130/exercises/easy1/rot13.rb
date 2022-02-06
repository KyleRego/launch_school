def titleize(string)
  string.split.map(&:capitalize).join(' ')
end

def rot13(letter)
  return ' ' if letter == ' '
  alphabet = ('a'..'z').to_a
  index = alphabet.index(letter)
  new_letter_index = index + 13
  new_letter_index -= 26 if new_letter_index > 25
  alphabet[new_letter_index]
end

def rot13_decipher(string)
  string = string.downcase
  new_string = ''
  string.each_char do |char|
    new_string << rot13(char)
  end
  titleize(new_string)
end

p rot13_decipher("Nqn Ybirynpr")
p rot13_decipher("Tenpr Ubccre")
