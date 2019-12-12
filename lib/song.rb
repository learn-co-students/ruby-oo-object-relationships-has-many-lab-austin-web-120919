class Song

    attr_reader :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
       # artist = Artist.new()
        #Artist.add_song(self)
    end

     def artist=(artist)
        #binding.pry
        if !self.artist 
        @artist = artist
        artist.add_song(self)
        end
     end

     def self.all
        @@all
     end

     def artist_name
      @artist ? @artist.name : nil
     end

end