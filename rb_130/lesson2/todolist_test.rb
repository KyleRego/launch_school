require 'simplecov'
SimpleCov.start

require 'minitest/autorun'

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    assert_equal(@todo1, @list.shift)
    assert_equal(2, @list.size)
  end

  def test_pop
    assert_equal(@todo3, @list.pop)
    assert_equal(2, @list.size)
  end

  def test_done?
    assert_equal(false, @list.done?)
    @todo1.done!
    @todo2.done!
    @todo3.done!
    assert_equal(true, @list.done?)
  end

  def test_add_raises_error
    assert_raises(TypeError) do
      @list.add(1)
    end
  end

  def test_shovel_method
    new_todo = Todo.new("a fourth todo")
    @list << new_todo
    assert_equal(4, @list.size)
    assert_equal(new_todo, @list.last)
  end

  def test_add
    new_todo = Todo.new("a fourth todo")
    @list.add(new_todo)
    assert_equal(4, @list.size)
    assert_equal(new_todo, @list.last)
  end

  def test_item_at
    assert_equal(@todo1, @list.item_at(0))
    assert_equal(@todo2, @list.item_at(1))
    assert_equal(@todo3, @list.item_at(2))
    assert_raises(IndexError) do
      @list.item_at(3)
    end
  end

  def test_mark_done_at
    @list.mark_done_at(0)
    assert_equal(true, @todo1.done)
    @list.mark_done_at(1)
    @list.mark_done_at(2)
    assert_equal(true, @list.done?)
  end

  def test_mark_undone_at
    @list.mark_done_at(0)
    assert_equal(true, @todo1.done?)
    @list.mark_undone_at(0)
    assert_equal(false, @todo1.done?)
  end

  def test_done!
    @list.done!
    assert_equal(true, @list.done?)
  end

  def test_remove_at
    assert_raises(IndexError) do
      @list.remove_at(3)
    end
    assert_equal(@todo2, @list.remove_at(1))
    assert_equal(2, @list.size)
  end

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT
  
    assert_equal(output, @list.to_s)

    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [X] Clean room
    [ ] Go to gym
    OUTPUT

    @list.mark_done_at(1)
    assert_equal(output, @list.to_s)

    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    @list.done!
    assert_equal(output, @list.to_s)
  end

  def test_each_1
    count = 0
    @list.each { |todo| count += 1 }
    assert_equal(3, count)
  end

  def test_each_2
    return_value = @list.each { |todo| nil }
    assert_equal(@list, return_value)
  end

  def test_select_1
    @todo1.done!
    @todo2.done!
    new_todos = @list.select { |todo| todo.done? }
    assert_equal(new_todos.to_a, [@todo1, @todo2])
  end

  def test_select_2
    new_todos = @list.select { |todo| todo.done? }
    assert_equal(TodoList, new_todos.class)
  end
end
