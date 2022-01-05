# input: a camelCase string
# output: a kebab-case string

# set new_str = ''
# for each character in the input string
#   if its lowercase
#     append it into the new_str
#   if its uppercase
#     append a '-' into the new_str
#     append it downcased into the new_str
# return the new_str

def kebabize(str)
  str.strip
  new_str = ''
  new_str << str[0].downcase if ('a'..'z').include?(str[0].downcase)
  str[1..-1].each_char do |char|
    if ('a'..'z').include?(char)
      new_str << char
    elsif ('A'..'Z').include?(char)
      new_str << '-'
      new_str << char.downcase
    end
  end
  new_str
end

p kebabize('Eyt')