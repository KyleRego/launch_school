input = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  input = gets.chomp.to_i
  if input >= 3
    break
  else
    puts "That's not enough lines."
  end
end

i = 0
while i != input
  puts "Launch school is the best"
  i += 1
end