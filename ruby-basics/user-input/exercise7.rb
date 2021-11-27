USER_NAME = "Kyle"
CORRECT_PASSWORD = "hello world"

input_name = nil
input_password = nil

loop do
  puts "Please enter your name:"
  input_name = gets.chomp
  puts "Please enter your password:"
  input_password = gets.chomp
  if input_name == USER_NAME && input_password == CORRECT_PASSWORD
    puts "Welcome!"
    break
  else
    puts "Authorization failed!"
  end
end