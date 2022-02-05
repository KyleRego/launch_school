def times(int)
  counter = 0
  while counter < int
    yield(counter)
    counter += 1
  end
  int
end

times(5) do |num|
  puts num
end

def each(array)
  counter = 0
  while counter < array.size
    element = array[counter]
    yield(element)
    counter += 1
  end
  array
end

each(['hello', 'world']) do |string|
  puts string
end

def reduce(array, default)
  accumulator = default
  array.each do |element|
    accumulator = yield(accumulator, element)
  end
  accumulator
end

puts reduce([1, 2, 3], 0) { |acc, num| acc + num }
puts reduce([1, 2, 3, 4], 1) { |acc, num| acc * num }
puts reduce(['f', 'o', 'o'], '') { |acc, letter| acc + letter }
