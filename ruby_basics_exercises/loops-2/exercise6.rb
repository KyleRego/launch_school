names = ['Sally', 'Joe', 'Lisa', 'Henry']

# while names.length > 0
#   puts names.pop()
# end

loop do
  if names.length == 0
    break
  end
  name = names.pop()
  puts name
end

