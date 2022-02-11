# input: a letter
# output: prints a diamond to the screen
# where the diamond uses A for the first row
# B for the second, etc. until the middlemost row is the input letter

# if the input is the n-th letter of the alphabet
# then the widest line of output is n*2-1 characters long (excluding \n)

# the i-th line of output, up to i equal n, has n - i whitespaces on outside
# and on the inside: has (2n - 2 - (n-i)) whitespaces, note i starts at 1
# (n - 2 + i) ---> was actually wrong

# make an array of lines from line 1 to line n, then iterate through it, printing each line
# and then iterate over it backwards after popping the last line

# def print_diamond(letter)
#   lines = []
#   alphabet = ('A'..'Z').to_a
#   n = alphabet.index(letter) + 1

#   counter = 1
#   while alphabet[counter-1] != letter
#     line = ''
#     line += ' ' * (n-counter)
#     line += alphabet[counter-1]
#     line += ' ' * ((2*counter - 3 < 0) ? 0 : (2*counter - 3)) 
# should be zero for counter = 1, 1 for counter = 2, 3 for counter = 3
#     line += alphabet[counter-1] unless counter == 1
#     line += ' ' * (n-counter)
#     lines << line
#     counter += 1
#   end

#   line = letter
#   line += ' ' * (2*n-3)
#   line += letter
#   lines << line

#   lines.each do |line|
#     puts line
#   end

#   lines.pop

#   lines.reverse_each do |line|
#     puts line
#   end
#   nil
# end

# print_diamond('E')
# print_diamond('C')

class Diamond
  def self.make_diamond(letter)
    return "A\n" if letter == 'A'
    return_string = ''
    lines = []
    alphabet = ('A'..'Z').to_a
    n = alphabet.index(letter) + 1

    counter = 1
    while alphabet[counter-1] != letter
      line = ''
      line += ' ' * (n-counter)
      line += alphabet[counter-1]
      line += ' ' * ((2*counter - 3 < 0) ? 0 : (2*counter - 3))
      line += alphabet[counter-1] unless counter == 1
      line += ' ' * (n-counter)
      lines << line + "\n"
      counter += 1
    end

    line = letter
    line += ' ' * (2*n-3)
    line += letter
    lines << line + "\n"

    lines.each do |line|
      return_string << line
    end

    lines.pop

    lines.reverse_each do |line|
      return_string << line
    end
    return_string
  end
end
