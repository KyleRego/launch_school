class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    if head.nil?
      head = Node.new
      head.value = value
    else
      tail.next_node = Node.new
      tail.value = value
    end
  end

  def prepend(value)
    rest_of_linked_list = head
    self.head = Node.new
    head.value = value
    head.next_node = rest_of_linked_list
  end

  def size
    count = 0
    current_node = head
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_s
    out_string = ''
    current_node = head
    while current_node
      out_string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    out_string + 'nil'
  end

  def tail
    current_node = head
    while current_node.next_node
      current_node = current_node.next_node
    end
    current_node
  end

  def at(index)
    current_node = head
    current_index = 0
    while current_index != index
      current_index += 1
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    last_node = at(size - 1)
    current_node = head
    while current_node.next_node != last_node
      current_node = current_node.next_node
    end
    current_node.next_node = nil
    last_node
  end

  def contains?(value)
    current_node = head
    while current_node
      return true if current_node.value == value
      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    return nil unless contains?(value)
    current_index = 0
    current_node = head
    while current_node.value != value
      current_index += 1
      current_node = current_node.next_node
    end
    current_index
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end

  def to_s
    "Node with a value of #{value}"
  end
end

my_linked_list = LinkedList.new
my_linked_list.append('world')
my_linked_list.append('foo')
my_linked_list.append('bar')
my_linked_list.prepend('hello')

puts my_linked_list
puts my_linked_list.size
puts my_linked_list.tail
puts my_linked_list.at(1)
puts my_linked_list.pop
puts my_linked_list
puts my_linked_list.contains?('world') # => true
puts my_linked_list.contains?('hello world') # => false
puts my_linked_list.find('world') # => 1
