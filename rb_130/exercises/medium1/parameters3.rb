items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *produce, wheat |
  puts produce.join(', ')
  puts wheat
end

puts

gather(items) do | apples , *corn_and_cabbage , wheat |
  puts apples
  puts corn_and_cabbage.join(', ')
  puts wheat
end

puts

gather(items) do | apples, *rest |
  puts apples
  puts rest.join(', ')
end

puts

gather(items) do | apples, corn , cabbage , wheat |
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end
