# input: a string
# output: a hash of three keys, lowercase, uppercase, and neither, 
# which are counts of how many each type of character is in the input string

# initialize a hash { lowercase: 0, uppercase: 0, neither: 0}
# use each_char to loop over the string
#   if (a-z).include?(char) then increment hash[lowercase]
#   similarly for uppercase and then use else for neither
# return the hash

def letter_case_count(a_string)
  return_hash = {lowercase: 0, uppercase: 0, neither: 0}
  a_string.each_char do |char|
    if ('a'..'z').include?(char)
      return_hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      return_hash[:uppercase] += 1
    else
      return_hash[:neither] += 1
    end
  end
  return_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
