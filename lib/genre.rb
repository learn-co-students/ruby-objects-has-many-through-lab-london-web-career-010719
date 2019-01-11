require_relative 'artist.rb'
require_relative 'song.rb'

class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def self.all
    @@all
  end

  def artists
    songs.map {|song| song.artist}.uniq
  end 

end
