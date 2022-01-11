class Transform

  def initialize(str)
    @string = str
  end

  def uppercase
    @string = @string.upcase
  end

  def self.lowercase(str)
    str.downcase
  end
end





my_data = Transform.new('abc')
puts my_data.uppercase # => 'ABC'
puts Transform.lowercase('XYZ') # => 'xyz'