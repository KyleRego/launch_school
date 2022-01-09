# input: a string with ha and Ha
# output: how many times does it alternate between ha and Ha + 1

# set a number_of_birds equal to 0
# set last = nil
# set counter equal to 0
# while counter + 2 < string.length
#   current_ha = string[counter, 2]
#   number_of_birds += 1 if last != current_ha
#   last = current_ha
#   counter += 2

require 'pry'

def kooka_counter(laughing)
  number_of_birds = 0
  last = nil
  counter = 0
  while (counter + 2) < laughing.length
    current_ha = laughing[counter, 2]
    number_of_birds += 1 if last != current_ha
    last = current_ha
    counter += 2
  end
  number_of_birds
end

p kooka_counter('hahahahaha')