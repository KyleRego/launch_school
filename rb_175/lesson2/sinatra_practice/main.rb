require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'
require 'yaml'

before do
  @users = YAML.load_file 'users.yaml'
  @usernames = @users.keys
  @name_emails = {}
  @usernames.each do |username|
    @name_emails[username] = @users[username][:email]
  end
  @name_interests = {}
  @usernames.each do |username|
    @name_interests[username] = @users[username][:interests]
  end

  @total_number_of_users = @usernames.count
  @total_number_of_interests = @name_interests.values.sum { |array| array.size }
end

get '/' do
  redirect '/users'
end

get '/users' do
  erb :index
end

get '/users/:name' do
  @username = params[:name]
  name = @username.to_sym
  @email = @name_emails[name]
  @interests = @name_interests[name]
  @other_usernames = @usernames.select { |username| username != name }
  erb :show
end
