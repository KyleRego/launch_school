class Scrabble
  def initialize(word)
    @word = word
  end

  # set count = 0
  # iterate over each character in @word
  # increment count appropriately using a case statement

  def score
    return 0 if @word.nil?
    count = 0
    word = @word.downcase
    for character in word.split('')
      case
      when %w(a e i o u l n r s t).include?(character)
        count += 1
      when %w(d g).include?(character)
        count += 2
      when %w(b c m p).include?(character)
        count += 3
      when %w(f h v w y).include?(character)
        count += 4
      when %w(k).include?(character)
        count += 5
      when %w(j x).include?(character)
        count += 8
      when %w(q z).include?(character)
        count += 10
      else
        count += 0
      end
    end
    count

  end

  def self.score(word)
    Scrabble.new(word).score
  end

end