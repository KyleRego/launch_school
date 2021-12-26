require 'pry'

def minilang(input_string)
  commands = input_string.split(' ')
  stack = []
  register = 0
  command_index = 0
  loop do
    command = commands[command_index]
    case
    when command.to_i.to_s == command
      register = command.to_i
    when command == 'PUSH'
      stack.push(register) if register != 0
    when command == 'ADD'
      register = stack.pop + register
    when command == 'SUB'
      register = register - stack.pop
    when command == 'MULT'
      register = register * stack.pop
    when command == 'DIV'
      register = register / stack.pop
    when command == 'MOD'
      register = register % stack.pop
    when command == 'POP'
      register = stack.pop
    when command == 'PRINT'
      puts register
    end
    command_index += 1
    break if command_index == commands.size
  end
end

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
