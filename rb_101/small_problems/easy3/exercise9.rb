# input: a string
# output: true if input is a palindrome, doing a case-insensitive comparison and ignoring non-alphanumeric characters

# make a string with all the lowercase and uppercase characters and numbers 'comparison string'
# make an empty string 'new string'
# split the input string into an array of each character
# loop over that array and check each character if it is in the comparison string
#   if it is, append the character into 'new string'
# downcase 'new string' and see if it is the same reversed


def real_palindrome?(a_string)
  comparison_string = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789'
  new_string = ''
  for character in a_string.split('')
    if comparison_string.include?(character)
      new_string << character
    end
  end
  new_string.downcase!
  new_string == new_string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false