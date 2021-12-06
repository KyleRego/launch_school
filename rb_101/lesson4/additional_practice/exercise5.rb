flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def find_index_of_be(array_of_strings)
  counter = 0

  loop do
    break if counter == array_of_strings.length

    if array_of_strings[counter].start_with?("Be")
      break
    end

    counter += 1
  end

  counter
end

index = find_index_of_be flintstones
puts index

index = flintstones.index do |name|
  name.start_with?("Be")
end

puts index