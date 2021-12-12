hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |arr|
  arr.each do |word|
    for character in word.split('')
      puts character if 'aeiou'.include?(character)
    end
  end
end
