def select_fruit(produce)
  return_hash = {}
  for key in produce.keys do
    if produce[key] == 'Fruit'
      return_hash[key] = 'Fruit'
    end
  end
  return_hash
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}