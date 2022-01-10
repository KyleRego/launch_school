# reverse a string

def reverse(string)
  i = 0
  j = string.length - 1
  while i < string.length / 2
    string[i], string[j] = string[j], string[i]
    i += 1
    j -= 1
  end
  string
end

# find all permutations of a string

def permutations(string)
  string.chars.permutation.to_a.map(&:join)
end

# count lowercase letters in a string

def count_lowercase_letters(string)
  lowercase = string.scan(/[a-z]/).count
end
