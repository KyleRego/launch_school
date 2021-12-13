LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a

require 'pry'

def uppercase?(string)
  string.chars.all? do |char|
    if LETTERS.include?(char) && (char.upcase != char)
      false
    else
      true
    end
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true