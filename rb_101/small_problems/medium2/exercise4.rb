# input: a string
# output: true or false depending on if all parentheses in
# the input string are properly balanced with each other

# initialize a counter to 0
# scan through the input string
# when ( is found, increment counter
# when ) is found, decrement counter
# return false if counter is ever negative
# return false if the counter is not 0 after the scan
# return true 

def balanced?(string)
  counter = 0
  string.chars.each do |char|
    if char == '('
      counter += 1
    elsif
      char == ')'
      counter -=1
      return false if counter < 0
    end
  end
  return false if counter != 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
