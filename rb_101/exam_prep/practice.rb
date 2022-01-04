# practice problem: find all substrings of a string

def substrings(string)
  substring_array = []
  for i in (0 .. string.length - 1)
    for j in (i .. string.length - 1)
      substring_array << string[i..j]
    end
  end
  substring_array.delete('hello')
  substring_array
end

# practice problem: find all permutations of a string

def permutations(string)
  permutations = string.chars.permutation.to_a.map(&:join)
  permutations.delete(string)
  permutations
end

# practice problem: reverse a string

def reverse(string)
  i = 0
  j = string.length - 1
  while i < string.length / 2
    string[i], string[j] = string[j], string[i]
    i += 1
    j -= 1
  end
  string
end

# practice problem: switch the keys and values of a hash

def switch(hash)
  values = hash.values
  keys = hash.keys
  counter = 0
  new_hash = {}
  loop do
    new_hash[values[counter]] = keys[counter]
    counter += 1
    break if counter == keys.size
  end
  new_hash
end

p switch({'1' => 1, '2' => 2, '3' => 3})
