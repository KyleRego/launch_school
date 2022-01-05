# input: a string of lowercase letters
# output: a hash where the keys are symbol representations of the letters
# and the values are counts of how many times that letter appears in the input

# set a return_hash = {}
# for each character in the input string
#   if return_hash.include?(char.to_sym)
#     then increment the count
#   otherwise set the count for that symbol equal to 1
# return the return_hash

def letter_count(string)
  return_hash = {}
  string.each_char do |char|
    if return_hash.include?(char.to_sym)
      return_hash[char.to_sym] += 1
    else
      return_hash[char.to_sym] = 1
    end
  end
  return_hash
end