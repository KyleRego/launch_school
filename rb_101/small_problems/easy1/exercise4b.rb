# input: an array of strings
# output: a hash where the strings are keys and 
# the number of times they occur in the input are the values

# initialize an empty hash
# for each element of the input array
#   if the element is a key of the return hash
#     increment its value
#   else
#     make it a key with a value of 1

def count_occurrences(array)
  hash = {}
  array.each do |str|
    str = str.downcase
    if hash.keys.include?(str)
      hash[str] += 1
    else
      hash[str] = 1
    end
  end
  hash
end

def print_hash(hash)
  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
  nil
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

print_hash(count_occurrences(vehicles))