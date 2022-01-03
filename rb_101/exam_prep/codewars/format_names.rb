def list(names)
  name_array = []
  names.each do |name_hash|
    name_array << name_hash[:name]
  end
  joiner(name_array)
end

def joiner(array)
  if array.length == 0
    return ''
  elsif array.length == 1
    return "#{array[0]}"
  elsif array.length == 2
    return "#{array[0]} & #{array[1]}"
  else
    return array[0...-1].join(', ') + " & #{array[-1]}"
  end
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'