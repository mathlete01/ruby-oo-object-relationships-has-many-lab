require 'pry'

class Song

  # CLASS VARIABLES
  # the song class will need to have a class variable that holds all instances of every song that's been created in an array. In order to have an artist find all of it's songs, the song class needs to know about all its song instances
  @@all = []

  # CLASS METHODS
  # To access that array, the song class will also need a class method that returns the class variable holding those instances.
  def self.all
    @@all
  end

  # INIT
  def initialize(name)
    @name = name
    @@all << self
  end

  # INSTANCE WRITER/READER MACROS
    # In order to have an artist find all of it's songs...a song instance needs to know about the artist class it belongs to.

  attr_accessor :name, :artist

  # INSTANCE METHODS
  # Build the methods some_song.artist_name that return the names of the artist. This method should use, or extend, the has many/belongs to relationship you're building out. If a song has an artist, you can call: some_song.artist and return an actual instance of the Artist class. Since every artist has a name, some_song.artist.name should return the name of the Artist instance associated with the given song. Your #artist_name method should utilize this relationship.
  def artist_name
    #if @artist == nil (works)
    if !@artist
      nil
    else 
      @artist.name
    end
  end

end