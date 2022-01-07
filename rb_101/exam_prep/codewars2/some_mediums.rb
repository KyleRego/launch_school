# input: an array of integers
# output: the input but with duplicates removed, keeping the rightmost occurrence of each element

def solve(arr)
  arr.reverse.uniq.reverse
end

# input: a number
# output: the number that you get by rearranging the digits so that its as large as possible

# split the number into an array of the digits
# sort the array in descending order
# map the array into a array of strs then join it and convert to int

def descending_order(n)
  n = n.to_s.chars.sort { |a, b| b <=> a }
  n.join('').to_i
end

# input: a string
# output: a string of each character appearing a number of times equal to its index + 1 in the input

# set a new_str equal to an empty string
# string.chars.each_with_index do |char, index|
#   new_str << char.upcase + char.downcase * index + '-'
# new_str.delete_at(-1)
# new_str

def accum(string)
  new_str = ''
  string.chars.each_with_index do |char, index|
    new_str << char.upcase + char.downcase * index + '-'
  end
  new_arr = new_str.chars
  new_arr.delete_at(-1)
  new_arr.join
end


