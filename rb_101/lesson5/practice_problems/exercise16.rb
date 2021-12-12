def random_character()
  return 'abcdefghijklmnopqrstuvwxyz0123456789'.split('').sample
end

def append_random_characters(number, string)
  number.times do
    string << random_character
  end
end

def make_UUID()
  return_string = ''
  append_random_characters(8, return_string)
  return_string << '-'
  append_random_characters(4, return_string)
  return_string << '-'
  append_random_characters(4, return_string)
  return_string << '-'
  append_random_characters(4, return_string)
  return_string << '-'
  append_random_characters(12, return_string)

  return_string
end

p make_UUID