require 'sinatra'
require 'tilt/erubis'
require 'bcrypt'
require 'pg'

configure(:development) do
  require 'sinatra/reloader'
end

configure do
  enable :sessions
  set :session_secret, 'secret'
end

class DatabasePersistence
  def initialize
    @db = PG.connect(dbname: "practice_project")
  end

  def query(sql, *params)
    @db.exec_params sql, params
  end

  def error_for_signup(username, password, confirmation)
    sql = 'SELECT username FROM users WHERE username = $1;'
    result = query(sql, username);
    if result.ntuples == 1
      "Username already taken."
    elsif username.length < 6 || username.length > 24
      "Username must be between 6 and 24 characters."
    elsif password.length < 6 || password.length > 24
      "Password must be between 6 and 24 characters."
    elsif password != confirmation
      "Password and password confirmation must match."
    end
  end

  def make_user(username, password)
    sql = "INSERT INTO USERS (username, password_digest) VALUES ($1, $2);"
    password_digest = BCrypt::Password.create(password)
    query sql, username, password_digest
  end
end

before do
  @database_persistence = DatabasePersistence.new
end

get '/' do
  erb :index, :layout => :layout
end

get '/signup' do
  erb :"users/signup", :layout => :layout
end

post '/signup' do
  username = params[:username]
  password = params[:password]
  confirmation = params[:confirmation]
  error = @database_persistence.error_for_signup(username, password, confirmation)
  if error
    session[:error] = error
    @username = username
    erb :"users/signup", :layout => :layout
  else
    @database_persistence.make_user(username, password)
    session[:success] = "Successfully created an account."
    redirect "/login"
  end
end

get '/login' do
  erb :"users/login", :layout => :layout
end

post '/login' do
  username = params[:username]
  password = params[:password]
  error = error_for_login(username, password)
end