count = 1

loop do
  puts "#{count} is odd" if count % 2 == 1
  puts "#{count} is even" if count % 2 == 0
  count += 1
  break if count > 5
end