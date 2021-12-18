def select_fruit(produce)
  selected_produce = {}
  produce.keys.each do |key|
    if produce[key] == 'Fruit'
      selected_produce[key] = 'Fruit'
    end
  end
  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}