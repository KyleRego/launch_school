

def halvsies(arr)
  if arr.empty?
    return [arr, arr]
  elsif arr.size.odd?
    second_half = arr.slice(arr.length / 2 + 1 , arr.length - 1)
  else
    second_half = arr.slice(arr.length / 2 , arr.length - 1)
  end
  first_half = arr - second_half
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]