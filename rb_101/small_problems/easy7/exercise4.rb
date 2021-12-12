# input: a string
# output: a new string that would be the result of calling #swapcase on the input string
# but without using the #swapcase method

# set return_string = ''
# for every character in the input string
#   if its lowercase, append it uppercased to return_string
#   if its uppercase, append it lowercased to return_string
#   else append it to return_string
# return return_string

def swapcase(a_string)
  return_string = ''
  a_string.each_char do |char|
    if ('a'..'z').include?(char)
      return_string << char.upcase
    elsif ('A'..'Z').include?(char)
      return_string << char.downcase
    else
      return_string << char
    end
  end
  return_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'