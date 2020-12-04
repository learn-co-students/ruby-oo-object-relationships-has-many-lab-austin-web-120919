require 'pry'
class Artist

    attr_reader :name

    @@artists = []
    #@songs = []

    def initialize(name)
        @name = name
        @songs = []
        @@artists << self
    end

    def songs
        @songs
    end

    # def self.find_artist(name)
    # end

    def add_song(song)
        songs << song
        song.artist = self
        #binding.pry
    end

    def self.add_song(song)
        songs << song
        #binding.pry
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        #binding.pry
        Song.all.length
    end

end