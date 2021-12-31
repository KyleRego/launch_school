HELPER = {'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5'}

HELPER_2 = {'1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u'}

require 'pry'

def encode(s)
  new_str = ''
  s.each_char do |char|
    if HELPER.include?(char)
      new_str << HELPER[char]
    else
      new_str << char
    end
  end
  new_str
end

def decode(s)
  new_str = ''
  s.each_char do |char|
    if HELPER_2.include?(char)
      new_str << HELPER_2[char]
    else
      new_str << char
    end
  end
  new_str
end

p encode('hello')