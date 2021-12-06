
def name(names)
  return names[rand(names.length)]
end

def activity(activities)
  return activities[rand(activities.length)]
end

def sentence(name, activity)
  return name + " went " + activity + " today!"
end


names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))