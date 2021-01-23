require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        return @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        
        
        genre_counts = {}
        @@genres.each do |genre|
            if genre_counts.include? genre
                genre_counts[genre] = genre_counts[genre] + 1
            else
                genre_counts[genre] = 1                
            end
        end
        return genre_counts

        # genre_key_one = @@genres.count("rap")
        # genre_key_two = @@genres.count("pop")
        # return genre_hash = {"pop" => genre_key_two, "rap" => genre_key_one}
    end

    def self.artist_count
        artist_key_one = @@artists.count("Brittany Spears")
        artist_key_two = @@artists.count("Jay-Z")
        return artist_hash = {"Brittany Spears" => artist_key_one, "Jay-Z" => artist_key_two}
    end
end
