# input: n, represents number of switches and also how many passes are made
# output: how many switches are off, assuming they are all on and then
# on the first pass they are all switched off

# make an array of n 1s = switches
# 1.upto(n) do |current_pass|
#   switches.each_with_index do |_, switch_index|
#     if (switch_index + 1) % current_pass == 0
#       toggle the switch at index switch_index
#     else do nothing
# return switches.count(0)

def off(n)
  switches = [1] * n
  1.upto(n) do |current_pass|
    switches.each_with_index do |_, switch_index|
      if (switch_index + 1) % current_pass == 0
        toggle_switch(switches, switch_index)
      end
    end
  end
  off_indices(switches)
end

def toggle_switch(switches, switch_index)
  if switches[switch_index] == 0
    switches[switch_index] = 1
  else
    switches[switch_index] = 0
  end
end

def off_indices(switches)
  offs = []
  switches.each_with_index do |switch, index|
    offs << (index + 1) if switch == 0
  end
  offs
end

p off(4)
p off(9)