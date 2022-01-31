class ArrayClass
  def initialize
    @items = []
  end

  def [](index)
    @items[index]
  end

  def []=(index, new_item)
    @items[index] = new_item
  end

  def <<(new_item)
    @items << new_item
  end

  def to_s
    @items.to_s
  end
end

array = ArrayClass.new
array << 'hello'
array << 'world'
puts array[0]
puts array[1]
array[0] = 'hello 2'
puts array