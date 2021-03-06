 require 'pry'

class Post

  # CLASS VARIABLES
  @@all = []

  # CLASS METHODS
  def self.all
    @@all
  end

  # INIT
  def initialize(title)
    @title = title
    @@all << self
  end

  # INSTANCE WRITER/READER MACROS
  attr_accessor :title, :author

  # INSTANCE METHODS
  def author_name
    if !@author
      nil
    else
      @author.name
    end
  end

end