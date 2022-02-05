def reduce(array, start=nil)
  if start.nil?
    accumulator = array[0]
    counter = 1
  else
    accumulator = start
    counter = 0
  end
  array[counter..-1].each do |element|
    accumulator = yield(accumulator, element)
  end
  accumulator
end

total = reduce([1, 2, 3], 1) do |accumulator, current|
  accumulator + current
end

puts total

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    
p reduce(array, 10) { |acc, num| acc + num }                
# reduce(array) { |acc, num| acc + num if num.odd? }

p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
p reduce(['a', 'b', 'c']) { |acc, value| acc += value } # => 'abc'