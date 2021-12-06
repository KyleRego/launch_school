h1 = {a: 100, b: 200, c: 300}
h2 = {d: 400, e: 500, f: 600}

h3 = h1.merge(h2)
puts "The following is h1 and then h3 after h3 = h1.merge(h2)"
puts h1
puts h3

h1.merge!(h2)
puts "The following is h1 after h1.merge!(h2)"
puts h1