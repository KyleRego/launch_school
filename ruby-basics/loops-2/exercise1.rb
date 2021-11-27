count = 1

loop do
  if (count % 2) == 1
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
  if count > 5
    break
  end
end