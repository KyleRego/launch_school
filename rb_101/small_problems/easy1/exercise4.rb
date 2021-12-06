# input: an array
# output: prints each string in the array with its number of occurrences in the array

# use a hash to keep track of how many times each string occurs

# initialize an empty hash
# for each string in the array
#   check to see if the string is a key in the hash
#   if not, initialize that key and set its value to 1
#   if it is a key in the hash, increment its value by 1
# when done iterating through the array, 
# for each key in the hash
#   print the key and its value

def count_occurrences(strings)
  hash = {}
  for string in strings do
    if hash.keys.include?(string)
      hash[string] += 1
    else
      hash[string] = 1
    end
  end
  
  for key in hash.keys
    puts "#{key} => #{hash[key]}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)