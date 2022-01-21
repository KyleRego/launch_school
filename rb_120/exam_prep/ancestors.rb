puts String.ancestors

str = String.new

begin
  puts str.ancestors
rescue
  puts "an error was thrown when you tried to use the ancestors method like an instance method"
end