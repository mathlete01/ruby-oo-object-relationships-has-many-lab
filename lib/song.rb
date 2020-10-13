require 'pry'

class Song

  # CLASS VARIABLES
  @@songs = []

  @@all = []

  # CLASS METHODS
  def self.songs
    @@songs
  end

  def self.all
    @@all
  end

  # INIT
  def initialize(name)
    @name = name
    @artist  #song instance needs to know about the artist class it belongs to.
    @@all << self
  end

  # INSTANCE WRITER/READER MACROS
  attr_accessor :name, :artist

  # INSTANCE READER METHODS
  def artist
    @artist
  end

  # INSTANCE METHODS
  def artist_name
    #if @artist == nil
    if !@artist
      nil
    else 
      @artist.name
    end
  end

end