BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'],
          ['C', 'P'], ['N', 'A'], ['G', 'T'],
          ['R', 'E'], ['F', 'S'], ['J', 'W'],
          ['H', 'U'], ['V', 'I'], ['L', 'Y'],
          ['Z', 'M']
          ]

# input: a string
# output: can the string be constructed using only one of each of the blocks ( a boolean )

# upcase the string
# iterate over the BLOCKS constant
#   check if the string has both letters for each block, if it does return false
# iterate over the alphabet
#   check that the count of each letter is not greater than 1, if it is return false
# return true

def block_word?(string)
  string = string.upcase
  BLOCKS.each do |block|
    return false if string.include?(block[0]) && string.include?(block[1])
  end
  ('A'..'Z').each do |char|
    return false if string.count(char) > 1
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BXX') == false
