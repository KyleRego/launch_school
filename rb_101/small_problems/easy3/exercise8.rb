# input: a string
# output: true if input was a palindrome, false otherwise

# check to see if the string reversed is equal to the string

def palindrome?(a_string)
  a_string == a_string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?('123ab321') == false