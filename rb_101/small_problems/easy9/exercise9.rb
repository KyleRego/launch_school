# assign a variable 'average' to be the average of the three inputs
# use a case statement 

def average(num1, num2, num3)
  (num1 + num2 + num3) / 3
end

def get_grade(num1, num2, num3)
  score = average(num1, num2, num3)
  case
  when score <= 100 && score >= 90
    'A'
  when score < 90 && score >= 80
    'B'
  when score < 80 && score >= 70
    'C'
  when score < 70 && score >= 60
    'D'
  else
    'F'
  end
end

p get_grade(95, 95, 95) == 'A'
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

# the `average` method is defined on line 4. It takes three numeric arguments, and returns the
# average of them. 
# the `get_grade` method is defined on line 8, and it also takes three numeric arguments.
# the first thing that `get_grade` does is call the `average` method with its three arguments and 
# assigns the return value of the method invocation to the variable `score`
# then the `get_grade` method uses a case statement. Because the argument to the case statement operator
# is null (no argument is given), the return value of the case statement is the value of the first
# when clause to be truthy. Each when clause checks if the `score` variable falls in the range 
# and if it does, returns the string corresponding to the letter score for that range.