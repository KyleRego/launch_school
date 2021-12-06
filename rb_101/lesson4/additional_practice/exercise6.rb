flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

new_flintstones = flintstones.map do |name|
  name[0..2]
end

p new_flintstones