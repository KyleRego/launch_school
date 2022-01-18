class FixedArray
  attr_reader :size

  def initialize(n)
    @size = n
    @array = [nil] * n
  end

  def valid_index?(index)
    index.integer? && index >= -size && index < size
  end

  def []=(index, item)
    if valid_index?(index)
      @array[index] = item
    else
      raise IndexError, "out of range index for FixedArray"
    end
  end
  
  def [](index)
    if valid_index?(index)
      @array[index]
    else
      raise IndexError, "out of range index for FixedArray"
    end
  end

  def to_a
    @array.clone
  end

  def to_s
    @array.to_s
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end