def largest_pair_sum(numbers)
  numbers = numbers.sort
  numbers[-1] + numbers[-2]
end