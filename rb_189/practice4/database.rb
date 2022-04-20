require 'pg'
require 'bcrypt'

class DatabasePersistence

  def initialize(database_name, logger)
    @db = PG.connect(dbname: database_name)
    @logger = logger
  end

  def disconnect
    @db.close
  end

  def query(sql, *params)
    @logger.info "#{sql}: #{params}"
    @db.exec_params sql, params
  end

  def username_already_exists(username)
    sql = 'SELECT * FROM users WHERE username = $1;'
    result = query sql, username
    result.ntuples == 1
  end

  def error_for_signup(username, password, confirmation)
    if !username || username.length < 6 || username.length > 24
      "Username must be between 6 and 24 characters."
    elsif username_already_exists(username)
      "That username is already taken."
    elsif !password || password.length < 6 || password.length > 24
      "Password must be between 6 and 24 characters."
    elsif password != confirmation
      "Password and password confirmation must match."
    end
  end

  def create_user(username, password_digest)
    sql = 'INSERT INTO users (username, password_digest) VALUES ($1, $2);'
    query sql, username, password_digest
  end

  def error_for_login(username, password)
    sql = 'SELECT * FROM users WHERE username = $1;'
    result = query sql, username
    return "Invalid combination of username and password." unless result.ntuples == 1
    password_digest_password = BCrypt::Password.new(result[0]["password_digest"])
    unless password_digest_password == password
      "Invalid combination of username and password."
    end
  end

  def all_posts
    sql = 'SELECT * FROM posts;'
    result = query sql
    posts = []
    result.each do |tuple|
      posts << { id: tuple["id"], title: tuple["title"], content: tuple["content"] }
    end
    posts
  end

  def find_post_by_id(id)
    sql = 'SELECT * FROM posts WHERE id = $1;'
    result = query sql, id
    tuple = result[0]
    { id: tuple["id"], title: tuple["title"], content: tuple["content"] }
  end

  def error_for_post(title, content)
    if !title || title.length == 0
      "A title is required."
    elsif !content || content.length == 0
      "A post must have content."
    end
  end

  def user_id_for_username(username)
    sql = 'SELECT * FROM users WHERE username = $1;'
    result = query sql, username
    result[0]["id"]
  end

  def create_post(title, content, user_id)
    sql = 'INSERT INTO posts (title, content, user_id) VALUES ($1, $2, $3);'
    query sql, title, content, user_id
  end

  def edit_post(post_id, title, content)
    sql = 'UPDATE posts SET (title, content) = ($1, $2) WHERE id = $3;'
    query sql, title, content, post_id
  end

  def error_for_comment(body)
    if !body || body.length == 0
      "Comment must have a body."
    end
  end

  def create_comment(post_id, body)
    sql = 'INSERT INTO comments (post_id, body) VALUES ($1, $2);'
    query sql, post_id, body
  end

  def find_comments_by_post_id(post_id)
    sql = 'SELECT * FROM comments WHERE post_id = $1;'
    result = query sql, post_id
    comments = []
    result.each do |tuple|
      comments << { id: tuple["id"], body: tuple["body"] }
    end
    comments
  end
end
