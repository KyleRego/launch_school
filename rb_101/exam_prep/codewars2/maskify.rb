# input: a string
# output: the input string but all characters except the last 4 are #

def maskify(cc)
  return cc if cc.length < 5
  "#" * (cc.length - 4) + cc[-4..-1]
end