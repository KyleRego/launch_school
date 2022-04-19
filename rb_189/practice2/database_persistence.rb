require 'pg'

class DatabasePersistence

  def initialize(logger)
    @db = PG.connect(dbname: "practice2")
    @logger = logger
  end

  def disconnect
    @db.close
  end

  def query(sql, *params)
    @logger.info "#{sql}: #{params}"
    @db.exec_params sql, params
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
    { id: result[0]["id"], title: result[0]["title"], content: result[0]["content"] }
  end

  def find_comments_by_post_id(post_id)
    sql = 'SELECT * FROM comments WHERE post_id = $1;'
    result = query sql, post_id
    comments = []
    result.each do |tuple|
      comments << { id: tuple["id"], content: tuple["content"] }
    end
    comments
  end

  def error_for_post(title, content)
    if !title || title.length == 0
      "Post must have a title"
    elsif !content || content.length == 0
      "Post must have content"
    end
  end

  def create_post(title, content)
    sql = 'INSERT INTO posts (title, content) VALUES ($1, $2);'
    query sql, title, content
  end

  def edit_post(id, title, content)
    sql = 'UPDATE posts SET (title, content) = ($1, $2) WHERE id = $3;'
    query sql, title, content, id
  end

  def error_for_comment(content)
    if !content || content.length == 0
      "Comment must have some content."
    end
  end

  def create_comment(post_id, content)
    sql = 'INSERT INTO comments (post_id, content) VALUES ($1, $2);'
    query sql, post_id, content
  end
end
