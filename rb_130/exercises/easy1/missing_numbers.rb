def missing(array_of_numbers)
  return [] if array_of_numbers.size < 2
  first = array_of_numbers[0]
  last = array_of_numbers[-1]
  all_integers = (first..last).to_a
  array_of_numbers.each do |number|
    all_integers.delete(number)
  end
  all_integers
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
