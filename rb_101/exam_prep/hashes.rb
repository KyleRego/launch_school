x = 'hi there'

my_hash = { x => 'some value' }

x << ' yes'

p my_hash.keys # the value of the key is not mutated

y = ['hello']

my_hash2 = { y => 'another value' }

y << 'world'

p my_hash2.keys # the value of the key was mutated!

