# input: a string
# output: a new string that is the input string with every other letter capitalized

# assume the first letter will be capitalized

# set a counter equal to 0
# set a return_string = ''
# while counter < length of the input string
#   if counter.even? then append input string[counter].upcase to return_string
#   if counter.odd? then append input string[counter].downcase to return_string
#   increment counter

def staggered_case(a_string)
  counter = 0
  return_string = ''
  while counter < a_string.length
    if counter.even?
      return_string << a_string[counter].upcase
    else
      return_string << a_string[counter].downcase
    end
    counter += 1
  end
  return_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
