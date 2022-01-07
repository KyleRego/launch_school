# input: a distance
# output: how many times to double 0.0001 to get a number > distance

PAPER_THICKNESS = 0.0001

def fold_to(distance)
  return nil if distance < 0
  counter = 0
  folded_thickness = PAPER_THICKNESS
  while folded_thickness < distance
    counter += 1
    folded_thickness *= 2
  end
  counter
end
