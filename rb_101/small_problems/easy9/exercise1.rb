# input: an array and a hash
# the array is 2 or more elements that when combined with adjoining spaces make a name
# the hash has two keys, :title and :occupation with appropriate values

# output: a greeting that uses the person's full name and mentions the title and occupation

def greetings(name_array, details_hash)
  name = name_array.join(' ')
  title = details_hash[:title]
  occupation = details_hash[:occupation]
  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
