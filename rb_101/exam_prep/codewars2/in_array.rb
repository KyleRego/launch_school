# input: two arrays array1 and array2
# output: strings of array1 which are substrings of strings in array2, sorted

# a function which returns true if str1 is a substring of str2
def is_substring?(substring, string)
  string.include?(substring)
end

p is_substring?('str', 'string') == true
p is_substring?('1', '345') == false