print "What is the bill? "
bill = gets.chomp.to_i
print "What is the tip percentage? "
tip = bill * gets.chomp.to_i / 100

puts "The tip is #{tip}"
puts "The total is #{bill+tip}"