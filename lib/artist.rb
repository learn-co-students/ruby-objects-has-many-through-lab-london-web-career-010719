require 'pry'

class Artist

attr_accessor :name

# The Artist class needs a class variable @@all that begins as an empty array
@@all = []

# An artist is initialized with a name and is saved in the @@all array.
def initialize(name)
  @name = name
  @@all << self
end

# The Artist class needs a class method .all that lists each artist in the class variable
def self.all
  @@all << self
end

# The Artist class needs an instance method, #new_song, that takes in an argument
# of a name and genre creates a new song. That song should know that it belongs to the artist.
def new_song(name, genre)
song = Song.new(name, self, genre)
song
# binding.pry
end

# The Artist class needs an instance method, #songs, that iterates through all songs
# and finds the songs that belong to that artist. Try using select to achieve this.
def songs
  Song.all.select { |x| x.artist == self}
end

# The Artist class needs an instance method, #genres that iterates over that artist's
# songs and collects the genre of each song.
def genres
  all_genres = []
    Song.all.each do |x|
      if x.artist == self
        all_genres << x.genre
      end
    end
all_genres
end


end
