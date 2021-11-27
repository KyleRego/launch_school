puts "Please enter a number between 0 and 100:"
number = gets.chomp.to_i

if (number >= 0 && number <= 50)
  puts "Entered number was between 0 and 50"
elsif (number >= 51 && number <= 100)
  puts "Entered number was between 51 and 100"
elsif (number > 100)
  puts "Entered number was greater than 100"
end
