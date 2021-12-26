# input: a string
# output: a hash of counts of lowercase, uppercase, and else letters

# initialize three counts
# iterate through each character of the string and increment the appropriate count
# calculate percentages and assign hash values

LOWERCASES = ('a'..'z')
UPPERCASES = ('A'..'Z')

def letter_percentages(string)
  lower = 0
  upper = 0
  other = 0
  string.each_char do |char|
    case
    when LOWERCASES.include?(char)
      lower += 1
    when UPPERCASES.include?(char)
      upper += 1
    else
      other += 1
    end
  end
  total = lower + upper + other
  { lowercase: lower*100.0/total, uppercase: upper*100.0/total, neither: other*100.0/total}
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }