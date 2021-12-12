# input: two strings
# ouput: the shorter string concatenated with longer string with shorter string again

# if str1 length is greater than str2 length
#   return str2 + str1 + str2 
# else
#   return str1 + str2 + str1

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"