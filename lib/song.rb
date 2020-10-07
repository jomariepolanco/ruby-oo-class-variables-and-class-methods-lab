require 'pry'
class Song
    
    @@count = 0 
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1 
        @@genres << @genre 
        @@artists << @artist 
    end

    def self.count 
        @@count 
    end

    def self.genres 
        @@genres.uniq!
    end

    def self.artists 
        @@artists.uniq!
    end

    def self.genre_count
      @@genres.each_with_object({}) do |genres, hash|
        if hash.keys.include?(genres)
            hash[genres] += 1
        elsif hash.keys.include?(genres) == false
            hash[genres] = 1
        end  
      end
    end

    def self.artist_count
        @@artists.each_with_object({}) do |artists, hash|
            if hash.keys.include?(artists)
                hash[artists] += 1
            elsif hash.keys.include?(artists) == false
                hash[artists] = 1
            end 
        end
    end
end