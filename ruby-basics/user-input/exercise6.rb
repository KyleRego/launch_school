CORRECT_PASSWORD = "hello world"
password = nil

loop do
  puts "Please enter your password:" 
  password = gets.chomp
  if password == CORRECT_PASSWORD
    puts "Welcome"
    break
  else
    puts "Invalid password!"
  end
end
