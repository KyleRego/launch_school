# input: a string of words
# output: the second to last word in the string

# split the string and return the second to last element

def penultimate(a_string)
  a_string.split(' ')[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'