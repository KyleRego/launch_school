# input: a string
# output: first character that is not repeated anywhere in the string

# make a hash where the keys are letters and the values are counts
# return the first letter from the string with a count in the hash of 1

def first_non_repeating_letter(string)
  hash = {}
  string.each_char do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  p hash
end

first_non_repeating_letter('stress')
