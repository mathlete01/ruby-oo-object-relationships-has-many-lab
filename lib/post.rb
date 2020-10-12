 require 'pry'

class Post

  @@all = []

  attr_accessor :title, :author, :author_name

  def initialize(title)
    @title = title
    @author
    @author_name
    @@all << self
  end

  def author_name
    if !@author
      nil
    else
      @author.name
    end
  end

  def self.all
    @@all
  end

end