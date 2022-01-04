# input: an array of strings
# output: a string which is the longest common prefix of all the strings in the input array

# initialize a variable prefix and set equal to an empty string
# for each char of the first string 
#   if the first char of all the other strings is equal to char
#     append the string into prefix
#   else
#     return prefix

def common_prefix(strings)
  prefix = ''
  i = 0
  strings[0].each_char do |char|
    if strings[1..-1].all? { |str| str[i] == char }
      i += 1
      prefix << char
    else
      return prefix
    end
  end
  prefix
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'car']) == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix(['throne', 'throne']) == 'throne'
