class Element
  attr_accessor :next
  attr_reader :value

  def initialize(value, next_element=nil)
    @value = value
    @next = next_element
  end
  
  def datum
    @value
  end

  def tail?
    self.next.nil?
  end

  def is_not_the_tail
    !tail?
  end
end

class SimpleLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def self.from_a(array)
    new_list = self.new
    return new_list if array.nil?
    array.reverse_each do |value|
      new_list.push(value)
    end
    new_list
  end

  def to_a
    return_array = []
    current_element = @head
    while !current_element.nil?
      return_array << current_element.value
      current_element = current_element.next
    end
    return_array
  end

  def reverse
    array = to_a
    array.reverse!
    SimpleLinkedList.from_a(array)
  end

  def size
    return 0 if @head.nil?
    count = 1
    current_element = @head
    while current_element.is_not_the_tail
      current_element = current_element.next
      count += 1
    end
    count
  end

  def empty?
    size == 0
  end

  def push(value)
    element = Element.new(value)

    if @head.nil?
      @head = element
      return
    end

    rest = @head
    element.next = rest
    @head = element
  end

  def pop
    return if @head.nil?
    before_head = @head
    @head = @head.next
    before_head.value
  end

  def peek
    return nil if @head.nil?
    @head.value
  end

  private

  def the_tail_element
    current_element = @head
    while current_element.is_not_the_tail
      current_element = current_element.next
    end
    current_element
  end
end

my_list = SimpleLinkedList.new
my_list.push(1)
my_list.push(2)
p my_list.size