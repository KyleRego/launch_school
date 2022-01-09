# Implement String#digit?

class String
  def digit?
    self.match(/\A\d\z/) ? true : false
  end
end

# remove all vowels from a string

def disemvowel(str)
  str.gsub(/[aeiou]/i, '')
end

# check if a code begins with 1, 2, or 3

def validate_code(code)
  code = code.to_s
  code.match(/\A[123]/) ? true : false
end

# check is a string is between 4 and 16 characters, 
# and only lowercase letters, numbers, and underscore

def validate_usr(username)
  username.match(/\A[a-z0-9_]{4,16}\z/) ? true : false
end

# replace all non-digit characters with ''

def get_number_from_string(s)
  s.gsub(/[^0-9]/, '').to_i
end

# replace all numeric characters with ''

def string_clean(string)
  string.gsub(/[0-9]/, '')
end

# remove every lone 9 that is between ts

def seven_ate9(str)
  str.gsub(/797/, '77').gsub(/797/, '77')
end

# remove all instances of bug but not bugs

def remove_bug(string)
  string.gsub(/bug([^s])/, '\1')
end

# p remove_bug('obugobugobuoobugsoo') #== 'ooobuoobugsoo'
# p remove_bug('bugs bunny') #== 'bugs bunny'


# input: a string with ha and Ha
# output: how many times does it alternate between ha and Ha + 1

def kooka_counter(laughing)
  laughing.scan(/(Ha)+|(ha)+/).count
end

# insert dashes between each two odd digits in num

def insert_dash(num)
  num = num.to_s
  2.times { num = num.gsub(/([13579])([13579])/, '\1-\2') }
  num
end

# inserts dashes between each two odds and asterisk between each two evens

def insert_dash2(num)
  num = num.to_s
  2.times { num = num.gsub(/([13579])([13579])/, '\1-\2').gsub(/([2468])([2468])/, '\1*\2') }
  num
end

# how many times does word appear, but anything can separate the letters of word

def testit(s)
  s.scan(/w.*?o.*?r.*?d/i).count
end

# p testit("We often read book, a word hidden in the book.")

# validate a string that it is at least six characters long, 
# contains a lowercase, contains an uppercase, and contains a number

/(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/
# this regex uses positive lookahead assertions which are of the form: (?=pat)


# replace all dots with dashes

def replaceDots(str)
  str.gsub(/\./, '-')
end

# get rid of trailing zeros

# def no_boring_zeros(num)
#   num = num.to_s
#   num = num.gsub(/0+\z/, '')
#   num.to_i
# end

def no_boring_zeros(num)
  num.to_s.gsub(/0+\z/, '').to_i
end