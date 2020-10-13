require 'pry'

class Artist
  
  # CLASS METHODS: GETTER
  # You'll be required to write a class method that returns the total number of songs that have been created. How can we get access to total number of songs from the artist class?
  def self.song_count
    Song.all.length
  end

  # INIT
  def initialize(name)
    @name = name
    @songs = []
  end

  # INSTANCE WRITER/READER MACROS
  attr_reader :name

  #INSTANCE METHOD: GETTER
  # an individual artist will need a method that returns a collection of all the songs that belong to that artist. 
  def songs
    Song.all
  end

  #INSTANCE METHODS
  def add_song(song)
    song.artist = self
  end

  # The #add_song_by_name method should take in an argument of a name (or title), use that argument to create a new song (or post) and then associate the objects.
  def add_song_by_name(title)
    title = Song.new(title)
    title.artist = self
  end

end