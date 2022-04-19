require 'sinatra'
require 'sinatra/reloader'

require_relative 'database_persistence'

configure do
  enable :sessions
  also_reload 'database_persistence.rb'
  set :erb, :escape_html => false
end

before do
  @storage = DatabasePersistence.new(logger)
end

after do
  @storage.disconnect
end

get '/' do
  @posts = @storage.all_posts
  erb :index, layout: :layout
end

get '/posts/new' do
  erb :"posts/new", :layout => :layout
end

post '/posts' do
  title = params[:title]
  content = params[:content]
  error = @storage.error_for_post(title, content)
  if error
    session[:error] = error
    erb :"posts/new", layout: :layout
  else
    @storage.create_post(title, content)
    session[:success] = 'Post successfully created.'
    redirect '/'
  end
end

get '/posts/:id' do
  @post = @storage.find_post_by_id(params[:id])
  @comments = @storage.find_comments_by_post_id(params[:id])
  erb :"posts/show", :layout => :layout
end

get '/posts/:id/edit' do
  @post = @storage.find_post_by_id(params[:id])
  erb :"posts/edit", layout: :layout
end

post '/posts/:id/edit' do
  id = params[:id]
  new_title = params[:title]
  new_content = params[:content]
  error = @storage.error_for_post(new_title, new_content)
  if error
    session[:error] = error
    @post = @storage.find_post_by_id(id)
    erb :"posts/edit", layout: :layout
  else
    @storage.edit_post(id, new_title, new_content)
    session[:success] = 'Post successfully edited.'
    redirect '/'
  end
end

post '/posts/:post_id/comments' do
  post_id = params[:post_id]
  content = params[:content]
  error = @storage.error_for_comment(content)
  if error
    session[:error] = error
    erb :"posts/show", layout: :layout
  else
    @storage.create_comment(post_id, content)
    session[:success] = 'Comment successfully created.'
    redirect "/posts/#{post_id}"
  end
end
