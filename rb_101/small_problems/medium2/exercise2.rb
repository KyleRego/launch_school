BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'],
          ['C', 'P'], ['N', 'A'], ['G', 'T'],
          ['R', 'E'], ['F', 'S'], ['J', 'W'],
          ['H', 'U'], ['V', 'I'], ['L', 'Y'],
          ['Z', 'M']
          ]

def block_word?(word)
  word = word.upcase
  BLOCKS.each do |pair|
    if word.include?(pair.first) && word.include?(pair.last)
      return false
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true