# input: a string
# output: true or false if the string is a palindrome
# but ignoring non-alphanumeric characters and does a case-insensitive comparison

# convert the string into its downcase
# iterate over the string and make a new string with only the alphanumeric chars
# see if the new string is equal to itself reversed

def real_palindrome?(string)
  string = string.downcase
  new_string = ''
  string.each_char do |char|
    new_string << char if ('a'..'z').include?(char) || ('0'..'9').include?(char)
  end
  new_string == new_string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
