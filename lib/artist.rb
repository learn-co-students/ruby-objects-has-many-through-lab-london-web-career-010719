class Artist


  attr_accessor :name

  @@all = []


      def initialize(name)
        @name = name
        @@all << self

      end


    def self.all
      @@all
    end




  # TBW
    def new_song(name, genre)

      Song.new(name, self, genre)

    end



    def songs
      Song.all.select {|song| song.artist == self}
       # the artist is going to look at all of the songs, and then select only the ones that belong to them.

    end

    def genres
      # array of genres our artist has, got information through songs
      songs.map do |song|
        song.genre
      end
    end

end


# jay_z = Artist.new("Jay-Z")
# rap = Genre.new("rap")
# shrimp = Song.new("Big Shrimpin", jay_z, rap)
