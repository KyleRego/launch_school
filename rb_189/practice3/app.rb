require 'sinatra'
require 'sinatra/reloader'

configure do
  enable :sessions
  set :session_secret, 'secret'
end

get '/' do
  @my_variable = "<h1>Hello world</h1>"
  erb :index, layout: :layout
end

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end

