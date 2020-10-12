require 'pry'
require 'song.rb'

class Artist
  
  #an individual artist will need a method that returns a collection of all the songs that belong to that artist.
  attr_accessor :name, :songs, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
      @name = name
      @songs = []
      @@all << self
  end

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

  #You'll be required to write a class method that returns the total number of songs that have been created. How can we get access to total number of songs from the artist class?
  def self.song_count
    Song.all.length
  end

  ##Build the method some_song.artist_name that returns the name of the artist of the given song.
  #Since every artist has a name, some_song.artist.name should return the name of the Artist instance associated with the given song. Your #artist_name method should utilize this relationship.
  def artist_name
    self.artist.name
  end 

  #binding.pry

end

#madonna = Artist.new("Madonna")
#madonna.add_song("Borderline")

#Pry.start(binding)