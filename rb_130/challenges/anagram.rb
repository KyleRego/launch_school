class Anagram
  def initialize(string)
    @word = string
  end

  def match(candidates)
    word = @word.downcase
    return_array = []
    anagrams = word.split('').permutation.to_a.map(&:join)
    for candidate in candidates
      return_array << candidate if anagrams.include?(candidate.downcase) && 
                                    candidate.downcase != word
    end
    return_array
  end
end

anagram1 = Anagram.new('hello')
puts anagram1.match(['world', 'lleho'])