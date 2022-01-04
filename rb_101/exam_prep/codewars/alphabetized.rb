# input: a string
# output: a new string, all the characters from the input string
# rearranged into alphabetical order, not considering capitalization

# split the string into an array of chars
# sort the array of chars by the char downcased
# (do not mutate the char when downcasing it)
# select only the characters which are alphabetical
# join the sorted array of chars into a string

def alphabetized(s)
  alphabatized_string = s.chars.select { |char| ('a'..'z').include?(char.downcase) }.sort_by { |char| char.downcase }.join
end

p alphabetized('The Holy Bible')
