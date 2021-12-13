

def consonant?(char)
  'BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz'.include?(char)
end

def double_consonants(a_string)
  return_string = ''
  a_string.each_char do |char|
    if consonant?(char)
      return_string << char << char
    else
      return_string << char
    end 
  end
  return_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""