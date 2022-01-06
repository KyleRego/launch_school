# input: a string with some characters are parentheses
# output: true if all paranetheses are properly balanced, false otherwise

# set a tracker equal to 0
# iterate through each char of the string
#   if char == '(' then incremenet tracker
#   if char == ')' then decremenet tracker
#   return false if tracker < 0
# return false if tracker != 0 true otherwise

def balanced?(string)
  tracker = 0
  string.each_char do |char|
    case char
    when '('
      tracker += 1
    when ')'
      tracker -= 1
    end
    return false if tracker < 0
  end
  tracker == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
