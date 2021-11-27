user_input = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3: (Q to quit)"
  user_input = gets.chomp
  break if user_input.downcase == "q"
  user_input = user_input.to_i
  if user_input <= 2
    puts "That's not enough lines."
    next
  end
  while user_input != 0
    puts "Launch school is the best"
    user_input -= 1
  end
end
