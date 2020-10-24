require "pry"

class Genre

@@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    #itterates through artists and finds all artists in self
    #goes to artists
    Song.all.map do |song|
      song.artist
    end
  end

  def songs
    #itterates through songs and finds all songs of that genre
    Song.all.select do |song|
      song.genre == self
    end
  end

end
