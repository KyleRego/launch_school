def execute_proc(proc)
  proc.call
end

def make_proc(&block)
  block
end

proc = make_proc { puts 'hello world' }
execute_proc(proc)
