# input: a string containing words separated by spaces
# output: the input string but with all words >= 5 characters reversed

# initialize an empty string
# split the string into an array
# use each to iterate over the array
#   if a word is >= 5 chars, append it reversed into the return string
#   else append it into the return string
# return the return string

def reverse_words(string)
  return_array = []
  string.split(' ').each do |word|
    if word.length >= 5
      return_array << word.reverse
    else
      return_array << word
    end
  end
  return_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS