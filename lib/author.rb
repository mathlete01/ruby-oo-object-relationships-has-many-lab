require 'pry'

class Author

  # CLASS METHOD: GETTER
  def self.post_count
    Post.all.length
  end

  # INIT
  def initialize(name)
    @name = name
    @posts = []
  end

  # INSTANCE WRITER/READER MACROS
  attr_reader :name

  # INSTANCE METHOD: GETTER
  def posts
    Post.all
  end

  # INSTANCE METHODS
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
  end

end