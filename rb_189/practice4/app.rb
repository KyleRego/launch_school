require 'sinatra'
require 'sinatra/reloader'
require 'bcrypt'

require_relative 'database'

configure do
  enable :sessions
  also_reload "database.rb"
end

before do
  if ENV["RACK_ENV"] == 'test'
    @storage = DatabasePersistence.new('practice4_test', logger)
  else
    @storage = DatabasePersistence.new('practice4', logger)
  end
end

after do
  @storage.disconnect
end

helpers do
  def logged_in?
    !session[:username].nil?
  end
end

def login_user(username)
  session[:username] = username
end

def require_logged_in
  unless logged_in?
    redirect '/'
  end
end

get '/' do
  erb :index
end

get '/signup' do
  erb :"users/new"
end

post '/users/new' do
  @username = params[:username]
  password = params[:password]
  confirmation = params[:confirmation]
  error = @storage.error_for_signup(@username, password, confirmation)
  if error
    session[:error] = error
    erb :"users/new"
  else
    password_digest = BCrypt::Password.create(password)
    @storage.create_user(@username, password_digest)
    login_user(@username)
    session[:success] = "Successfully registered an account."
    redirect '/'
  end
end

get '/login' do
  erb :"users/login"
end

post '/login' do
  @username = params[:username]
  password = params[:password]
  error = @storage.error_for_login(@username, password)
  if error
    session[:error] = error
    erb :"users/login"
  else
    login_user(@username)
    session[:success] = "Successfully logged in."
    redirect '/'
  end
end

get '/logout' do
  session[:username] = nil
  redirect '/'
end

get '/posts' do
  require_logged_in
  @posts = @storage.all_posts
  erb :"posts/index"
end

get '/posts/new' do
  require_logged_in
  erb :"posts/new"
end

post '/posts' do
  require_logged_in
  @title = params[:title]
  @content = params[:content]
  user_id = @storage.user_id_for_username(session[:username])
  error = @storage.error_for_post(@title, @content)
  if error
    session[:error] = error
    erb :"posts/new"
  else
    @storage.create_post(@title, @content, user_id)
    session[:success] = "Post successfully created."
    redirect '/posts'
  end
end

get '/posts/:post_id/edit' do
  require_logged_in
  @post = @storage.find_post_by_id(params[:post_id])
  erb :"posts/edit"
end

post '/posts/:post_id/edit' do
  require_logged_in
  title = params[:title]
  content = params[:content]
  error = @storage.error_for_post(title, content)
  if error
    session[:error] = error
    @post = @storage.find_post_by_id(params[:post_id])
    erb :"posts/edit"
  else
    @storage.edit_post(params[:post_id], title, content)
    session[:success] = "Post successfully edited."
    redirect '/posts'
  end
end
