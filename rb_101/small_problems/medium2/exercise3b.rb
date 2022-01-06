# input: a string
# output: a hash with 3 keys: one for percentage of lowercase
# one for percentage of uppercase, one for percentage of neither

# set three counts equal to 0: lowercase, uppercase, and neither
# for each char in the string
#   use a case statement and increment the appropriate count
# total = lowercase + uppercase + neither
# make the hash

def letter_percentages(string)
  lowercase = 0
  uppercase = 0
  neither = 0
  string.each_char do |char|
    case
    when ('a'..'z').include?(char)
      lowercase += 1
    when ('A'..'Z').include?(char)
      uppercase += 1
    else
      neither += 1
    end
  end
  total = lowercase + uppercase + neither
  { lowercase: 100.0*lowercase/total, uppercase: 100.0*uppercase/total, neither: 100.0*neither/total }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }