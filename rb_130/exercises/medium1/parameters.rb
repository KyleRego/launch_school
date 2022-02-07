items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   puts "#{items.join(', ')}"
#   puts "Nice selection of food we have gathered!"
# end

def gather(items_)
  yield(items_) if block_given?
end

gather(items) do |items_array|
  puts "Let's start gathering food."
  puts "#{items_array.join(', ')}"
  puts "Nice selection of food we have gathered!"
end
