hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []
hsh.each do |key, details|
  if details[:type] == 'fruit'
    new_arr << details[:colors].map { |color| color.capitalize }
  elsif details[:type] == 'vegetable'
    new_arr << details[:size].upcase
  end
end

p new_arr