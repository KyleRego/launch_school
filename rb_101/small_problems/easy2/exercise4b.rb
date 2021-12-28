print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

year = Time.now.year

puts "It's #{year}. You will retired in #{year+retirement_age-age}"
puts "You have only #{retirement_age-age} to go!"