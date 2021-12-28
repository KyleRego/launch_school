print 'What is your name? '
name = gets.chomp
if name.end_with?('!')
  puts "HELLO #{name.upcase.delete('!')}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
