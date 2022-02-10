def each(array)
  counter = 0
  while counter < array.size
    yield(array[counter])
    counter += 1
  end
end

# each([1, 2, 3]) { |number| puts number }

def select(array)
  counter = 0
  new_array = []
  while counter < array.size
    element = array[counter]
    new_array << element if yield(element)
    counter += 1
  end
  new_array
end

# odds = select([1, 2, 3, 4, 5, 6]) { |number| number.odd? }
# puts odds

def reduce(array, obj)
  counter = 0
  accumulator = obj
  while counter < array.size
    accumulator = yield(accumulator, array[counter])
    counter += 1
  end
  accumulator
end

# total_added = reduce([1, 2, 3], 0) { |acc, curr| acc + curr }
# puts total_added
# total_multiplied = reduce([1, 2, 3, 4], 1) { |acc, curr| acc * curr }
# puts total_multiplied
# string = reduce(['a', 'b', 'c'], '') { |acc, curr| acc + curr }
# puts string

def my_each(array, &block)
  counter = 0
  size = array.size
  while counter < size
    block.call(array[counter])
    counter += 1
  end
  array
end

# p my_each([1, 2, 3, 4]) { |number| puts number }

def my_select(array, &block)
  counter = 0
  new_array = []
  size = array.size
  while counter < size
    element = array[counter]
    new_array << element if block.call(element)
    counter += 1
  end
  new_array
end

# p my_select([1, 2, 3, 4, 5, 6]) { |number| number.even? }

def my_reduce(array, obj, &block)
  counter = 0
  size = array.size
  accumulator = obj
  while counter < size
    element = array[counter]
    accumulator = block.call(accumulator, element)
    counter += 1
  end
  accumulator
end

# p my_reduce([1, 2, 3], 0) { |accumulator, current_value| accumulator + current_value }

def my_times(integer, &block)
  counter = 0
  while counter < integer
    block.call(counter)
    counter += 1
  end
  integer
end

# my_times(6) { |number| puts number }

def my_map(array)
  new_array = []
  array.each do |element|
    new_array << yield(element)
  end
  new_array
end

# mapped_nums = my_map([1, 2, 3, 4, 5]) { |number| number + 2 }
# p mapped_nums

def another_map(array, &block)
  new_array = []
  array.each do |element|
    new_array << block.call(element)
  end
  new_array
end

# mapped_nums = another_map(['a', 'b', 'c']) { |letter| letter + 'd' }
# p mapped_nums

def count(*array, &block)
  count = 0
  array.each do |element|
    count += 1 if block.call(element)
  end
  count
end

# p count(1, 3, 6) { |value| value.odd? } == 2
# p count(1, 3, 6) { |value| value.even? } == 1
# p count(1, 3, 6) { |value| value > 6 } == 0
# p count(1, 3, 6) { |value| true } == 3
# p count() { |value| true } == 0
# p count(1, 3, 6) { |value| value - 6 } == 3
