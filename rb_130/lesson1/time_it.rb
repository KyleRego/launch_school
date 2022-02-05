def time_it
  before = Time.now
  yield
  after = Time.now
  puts "It took #{after-before} seconds."
end

time_it do 
  puts "hello world"
  [1, 2, 3].each { |num| puts num }
  puts "hello world again"
end