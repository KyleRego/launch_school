# input: a string
# output: true or false depending on if the string 
# can be made up of a substring of itself multiple times

# find all substrings of the string
# check each substring if it can be used to construct the string

# to find all substrings of a string
# initialize an empty array 'substrings'
# for i in (0..substring.length - 1)
#    for j in (i..substring.length - 1)
#      slice the string from i to j and add this to substrings

# to check a substring if it can be used to construct the string
# while the substring is still in the string
#   delete that part of the string
# check if the string is an empty string

# to check if a substring can be used to construct a string with at most 10 copies
# 0.upto(10) do |num|
#   return true if substr * num == substring

# to check if a substring can be used to construct the string
# check is the substring * (string.length / substring.length) == string

def repeated_substring_pattern(string)
  substrs = substrings(string)
  for substr in substrs
    return true if substr * (string.length / substr.length) == string
  end
  false
end


def substrings(string)
  substrings = []
  for i in (0..string.length - 1)
    for j in (i..string.length - 1)
      substrings << string[i..j]
    end
  end
  substrings.uniq!.delete(string)
  substrings
end

p substrings('abab')
p repeated_substring_pattern('abab')
p repeated_substring_pattern('aba')