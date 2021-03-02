class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.artist
        song.artist = self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        parts = filename.split(" - ")
        artist_name = parts[0]
        song_name = parts[1].gsub(".mp3", "")

        song = self.new
        song.name == song_name
        song.artist_name = artist_name
        song
    end

    def artist_name
        if artist
            artist.name
        else
            nil
        end
    end

    def self.new_by_filename(filename)
        artist, song = filename.split(" - ")
        new_song = song.new
        new_song.artist_name = artist 
        new_song
    end




end