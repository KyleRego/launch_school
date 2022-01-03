# input: an array of strings of lowercase letters
# output: an array of characters that appear in all of the strings
# and if a character appears in all strings more than once, it appears in the output more than once

# check each character in the first string of the array if it appears in all of the other strings
# if it appears in the other string, remove it from that string as well to account for duplicates correctly

def common_chars(words)
  return_array = []
  words[0].each_char do |char|
    bool_array = []
    for word in words[1..-1]
      if word.include?(char)
        word.sub!(char, '')
        bool_array << true
      else
        bool_array << false
      end
    end
    return_array << char if bool_array.all? { |bool| bool }
  end
  return_array
end

def delete_one(string, char_to_delete)
  return_string = ''
  deleted = false
  string.each_char do |char|
    if !deleted && char == char_to_delete
      deleted = true
    else
      return_string << char
    end
  end
  return_string
end

p delete_one('lock', 'o')
p delete_one('cook', 'o')
p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']