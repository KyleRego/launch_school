# input: a string
# output: a hash where keys are letters and values are
# the counts of how many time that letter appeared in the string

# initialize an empty hash
# for each character of the input string
#   if the character is a key of the hash, increment the value
#   otherwise set the key of the hash equal to 1

def count_chars(s)
  hash = {}
  s.each_char do |char|
    if hash.keys.include?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  hash
end
