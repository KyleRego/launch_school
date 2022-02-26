require 'socket'

def extract_http_method(request_line)
  request_line.split(' ')[0]
end

def extract_path(request_line)
  path_and_query_string = request_line.split(' ')[1]
  query_string = path_and_query_string.split('?')[0]
end

def extract_query_params(request_line)
  return_hash = {}
  path_and_query_string = request_line.split(' ')[1]
  query_string = path_and_query_string.split('?')[1]
  return return_hash if query_string.nil?
  param_value_array = query_string.split('&')
  param_value_array.each do |param_and_value_string|
    param_and_value = param_and_value_string.split('=')
    return_hash[param_and_value[0]] = param_and_value[1]
  end
  return_hash
end

server = TCPServer.new('localhost', 3003)
loop do
  client = server.accept

  request_line = client.gets
  next if !request_line || request_line =~ /favicon/

  method = extract_http_method(request_line)
  path = extract_path(request_line)
  params = extract_query_params(request_line)

  rolls = params['rolls'].to_i
  sides = params['sides'].to_i

  client.puts "HTTP/1.1 200 OK\r\n"
  client.puts "Content-Type: text/html\r\n\r\n"
  client.puts '<html>'
  client.puts '<body>'
  client.puts '<pre>'
  client.puts method
  client.puts path
  client.puts params
  client.puts '</pre>'

  client.puts '<h1>Counter</h1>'

  number = params["number"].to_i
  client.puts "<p>The current number is #{number}.</p>"

  client.puts "<a href='/?number=#{number + 1}'>Add one</a>"
  client.puts "<a href='/?number=#{number - 1}'>Subtract one</a>"

  client.puts '</body>'
  client.puts '</html>'

  client.close
end
