# input: a non-empty string
# output: the middlemost one or two characters of the input

# if the input is odd
# return input[mid]
# if the input is even
# return input[mid..mid+1]

def center_of(string)
  mid = string.length / 2
  if string.size.odd?
    return string[mid]
  else
    return string[mid-1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'