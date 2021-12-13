
def palindromes(a_string)
  palindrome_array = []
  substrings = substrings(a_string)
  substrings.each do |substring|
    palindrome_array << substring if palindrome?(substring)
  end
  palindrome_array
end

def palindrome?(a_string)
  a_string.reverse == a_string && a_string.length != 1
end

def substrings(a_string)
  return_array = []
  counter_index = 0
  while counter_index < a_string.length
    sliced_string = a_string.slice(counter_index..a_string.length)
    leading_substrings(sliced_string).each do |substring|
      return_array << substring
    end
    counter_index += 1
  end
  return_array
end

def leading_substrings(a_string)
  accumulator = ''
  return_array = []
  a_string.each_char do |char|
    accumulator << char
    return_array << accumulator.clone
  end
  return_array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]