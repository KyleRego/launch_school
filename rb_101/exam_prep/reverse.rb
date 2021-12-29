# input: a string
# output: the string, reversed

# set i = 0
# set j = string.length - 1
# while i < string.length / 2
#   switch the characters at i and j
#   increment i and decrement j

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

p reverse('hello world')
p reverse('three')
