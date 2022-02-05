def compare(string)
  puts "Before: #{string}"
  string = yield(string)
  puts "After: #{string}"
end


compare('hi') { |word| word.upcase }

# Output:
# Before: hi
# After: HI