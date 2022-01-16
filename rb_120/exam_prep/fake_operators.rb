class ItemGroup

  def initialize(items)
    @items = items
  end

  def <<(new_item)
    @items << new_item
  end

  def [](index)
    @items[index]
  end

  def []=(index, new_item)
    @items[index] = new_item
  end

  def to_s
    "This items contains: #{@items}"
  end
end

item_group1 = ItemGroup.new(['apple', 'banana', 'plum'])
item_group2 = ItemGroup.new(['paper', 'scissors', 'pencil'])

item_group1 << 'orange'
item_group1[0] = 'cat'

puts item_group1
puts item_group2[2]