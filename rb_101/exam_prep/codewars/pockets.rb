# input: a hash, where keys are symbols and values are arrays of integers; and
# an array of integers, which are the allowed values
# output: an array of symbols, where each symbol is a key for which there was a not allowed value

# for each key of the hash
#   for each value of the key's values
#     if allowed values does not include the value
#        append the key into the return array
# return the return_arr


def find_suspects(pockets, allowed_items)
  suspects = []
  pockets.keys.each do |key|
    items = pockets[key]
    next if !items
    items.each do |item|
      if !allowed_items.include?(item)
        suspects << key
      end
    end
  end
  return suspects.uniq if !suspects.empty?
  nil
end

example_pockets = {
  bob: [1],
  tom: [2, 5],
  jane: [7],
  kyle: nil
}
p find_suspects(example_pockets, [1, 2])