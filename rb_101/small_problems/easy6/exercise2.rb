# input: an array of strings
# output: an array of the same strings with vowels removed

# iterate over the array
# delete vowels in each string

def remove_vowels(array_of_strings)
  array_of_strings.map do |string|
    string.delete('aeiouAEIOU')
  end
end

p remove_vowels(['hello', 'world'])