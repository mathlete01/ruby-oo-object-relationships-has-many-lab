require 'pry'

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
  end

  def self.post_count
    Post.all.length
  end

end