# input: a lowercase string
# output: an array of strings where its the input string but each consecutive
# string has the next letter uppercased, but there can be whitespace

# set a loop_counter equal to 0
# return_arr = []
# start a loop
#   set a character_counter equal to 0
#   set a number_letters_seen equal to 0
#   return_str = ''
#   start a loop
#     if str[character_counter] is a letter and loop_counter == number_letters_seen
#       str[character_counter] gets upcased and appended into return_str
#       number_letters_seen += 1
#     elsif str[character_counter] is a letter
#       str[character_counter] gets appended into return_str
#       number_letters_seen += 1
#     elsif str[character_counter] == ' '
#       return_str << ' '
#     end
#     character_counter += 1
#     break if character_counter == str.length
#   end loop
#   return_str gets put into return_arr
#   loop_counter += 1
#   break if loop_counter == length of str.to_a.select { |char| ('a'..'z').include?(char) }
# end loop
#       

def wave(str)
  letters = ('a'..'z').to_a
  return_arr = []
  loop_counter = 0
  loop do
    character_counter = 0
    number_letters_seen = 0
    return_str = ''
    loop do
      char = str[character_counter]
      if letters.include?(char) && loop_counter == number_letters_seen
        return_str << char.upcase
        number_letters_seen += 1
      elsif letters.include?(char)
        return_str << char
        number_letters_seen += 1
      elsif char == ' '
        return_str << ' '
      end
      character_counter += 1
      break if character_counter == str.length
    end
    return_arr << return_str
    loop_counter += 1
    break if loop_counter == str.chars.select { |char| letters.include?(char) }.length
  end
  return_arr
end

p wave('a      b  ')
