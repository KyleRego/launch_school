def select(array)
  return_array = []
  counter = 0
  while counter < array.size
    return_array << array[counter] if yield(array[counter])
    counter += 1
  end
  return_array
end

odds = select([1, 2, 3, 4, 5, 6, 7, 8, 9]) do |num|
  num.odd?
end

p odds

long = select(['hello', 'world', 'foo', 'bar']) do |string|
  string.length > 4
end

p long
