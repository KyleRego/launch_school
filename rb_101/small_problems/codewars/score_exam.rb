# input: two arrays where the arrays are isngle strings of "a", "b", "c", "d"
# the second array may also have empty strings

# output: a score based on the second array being a student's answers
# and the first array is the correct answers
# +4 for each correct answer, -1 for each incorrect answer, and 0 for each blank

# set a score equal to 0
# set a counter equal to 0
# loop do
#   correct_answer = arr1[counter]
#   actual_answer = arr2[counter]
#   if correct_answer == actual answer
#      score += 4
#   elsif actual answer = blank
#      do nothing
#   else
#      score -= 2
#   counter += 1
#   break if counter == arr.size
# return 0 if score < 0
# score

def check_exam(arr1, arr2)
  score = 0
  counter = 0
  loop do
    correct_answer = arr1[counter]
    actual_answer = arr2[counter]
    if correct_answer == actual_answer
      score += 4
    elsif actual_answer == ''
      # do nothing
    else
      score -= 1
    end
    counter += 1
    break if counter == arr1.size
  end
return 0 if score < 0
score
end


