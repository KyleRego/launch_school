# input: two strings
# output: the shorter string + longer + shorter (concatenation)

# put the two strings into an array
# sort the array based on size of the string in it
# first element of array + second + first 

def short_long_short(string1, string2)
  arr = [string1, string2]
  arr.sort_by! do |str|
    str.length
  end
  arr[0] + arr[1] + arr[0]
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
