# input: an array of numbers
# output: an array of sums, where each sum
# is the sum of all elements of a subsequence of the array

# find all pertinent subsequences of the array
# map over them to find their sums and return it

# how to find all pertinent subsequences of the array
# set counter = 0
# start a loop
#   slice the array from counter to the end
#   append that into an array of subsarrays
#   counter += 1
#   break if counter == length of the array

def parts_sums(array)
  subsequences = []
  i = 0
  loop do
    subsequences << array[i..-1]
    i += 1
    break if i == array.length
  end
  subsequences << []
  subsequences.map { |subsequence| subsequence.sum }
end

p parts_sums([0, 1, 3, 6, 10])