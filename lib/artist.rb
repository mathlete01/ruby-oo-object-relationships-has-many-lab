require 'pry'

class Artist
  
  # CLASS VARIABLES
  @@all = []

  # CLASS METHODS: GETTER
  def self.all
    @@all
  end

  def self.song_count
    Song.all.length
  end

  # INIT
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  # INSTANCE WRITER/READER MACROS
  attr_accessor :name, :artist

  #INSTANCE METHODS
  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(title)
    title = Song.new(title)
    title.artist = self
    @songs << title
  end

end