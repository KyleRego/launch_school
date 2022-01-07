def next_bigger(number)
  permutations = number.to_s.chars.permutation.to_a.map(&:join).map(&:to_i)
  permutations.sort!.uniq!
  index_of_number = permutations.index(number)
  permutations[index_of_number + 1] ? permutations[index_of_number + 1] : -1
end

p next_bigger(12)
p next_bigger(132)