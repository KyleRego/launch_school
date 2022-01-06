# input: a string of upper and lowercase letters
# output: the string alphabetized but with the capital letter appearing before the lowercase letters

# sort by an array where the first element is the letter downcased and the second is the letter

def find_children(string)
  string.chars.sort_by { |char| [char.downcase, char] }.join
end

p find_children('abBA')