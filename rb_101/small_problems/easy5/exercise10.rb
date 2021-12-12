# input: a string
# output: prints the input string centered in a box with + at the corners,
# | at the sides, and - at the top and bottom with one space of padding


# take the length of the string and add 2 to it, assign to a variable inner_width
# puts '+' + - * inner_width + '+'
# puts '|' + ' ' * inner_width + '|'
# etc. and use String#center 

def print_in_box(a_string)
  inner_width = a_string.length + 2
  puts '+' + '-' * inner_width + '+'
  puts '|' + ' ' * inner_width + '|'
  puts '|' + a_string.center(inner_width) + '|'
  puts '|' + ' ' * inner_width + '|'
  puts '+' + '-' * inner_width + '+'
end

print_in_box('hello world')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')