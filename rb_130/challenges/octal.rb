class Octal
  def initialize(number)
    @number = number
  end

  # 233
  # 3 3 2
  # 2 * 8 ** (3-1-0)
  # 3 * 8 ** (3-2)

  # set sum = 0
  # convert the number to a string
  # split the string into an array of digit characters
  # map the array into an array of digits

  # use each_with_index and add to sum
  # the digit times 8 raised to the (length of array - 1 - index)

  def to_decimal
    return 0 if not_valid_octal?
    sum = 0
    digits_reversed = @number.to_s.split('').map(&:to_i)
    size = digits_reversed.size
    digits_reversed.each_with_index do |digit, index|
      sum += digit * 8**(size - 1 - index)
    end
    sum
  end

  private

  def not_valid_octal?
    @number.chars.any? do |char|
      !('0'..'7').to_a.include?(char)
    end
  end
end

example = Octal.new('233')
puts example.to_decimal

example = Octal.new('a')
puts example.to_decimal
