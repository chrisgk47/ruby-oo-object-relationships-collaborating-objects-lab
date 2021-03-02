require 'pry'
class Artist

    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def self.create_by_name(song_name)
        song = self.create
        song.name = song_name
        song
    end

    def self.find(name)
        @@all.find{|artist| artist.name == name}
    end

    def self.create_by_name(name)
        song = Song.create
        song.name = self
        song
    end

    def self.find_or_create_by_name(name)
        # binding.pry
        if Artist.find(name)
            Artist.find(name)
        else 
            Artist.new(name)
        end
    end




end