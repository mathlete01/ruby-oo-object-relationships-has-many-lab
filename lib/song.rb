require 'pry'
require 'artist.rb'

class Song

  #How can an artist have many songs and a song belong to an artist? An individual song will need to have a reference to the artist it belongs to, meaning it will need to have an artist=() and artist method. 
  attr_accessor :name, :artist

  # the song class will need to have a class variable that holds all instances of every song that's been created in an array. 
  @@songs = []

  #the song class needs to know about all its song instances
  @@all = []

  #To access that array, the song class will also need a class method that returns the class variable holding those instances.
  def self.songs
    puts "* * * @@songs = #{@@songs}"
    @@songs
  end

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @artist  #song instance needs to know about the artist class it belongs to.
    @@all << self
  end

  # def artist=()
  #   @artist
  # end

  def artist
    @artist
  end

  def artist_name
    #if @artist == nil
    if !@artist
      nil
    else 
      @artist.name
    end
  end

  #borderline = Song.new("Borderline", madonna)


end