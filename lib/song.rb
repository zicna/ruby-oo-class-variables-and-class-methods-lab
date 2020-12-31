class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []
    # @@artists_uniq = []

    def initialize(name, atrist, genre)
        @name = name
        @artist = atrist
        @genre = genre

        @@count += 1
        @@genres << @genre
        @@artists << @artist
        
    end

    #class methods
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
       @@artists.uniq
    end

    def self.genre_count
        new_hash = {}
        @@genres.each do |item|
            if new_hash[item] == nil
                new_hash[item] = 1
            else
                new_hash[item] += 1
            end
        end
        new_hash
    end

    def self.artist_count
        new_hash = {}
        @@artists.each do |item|
            if new_hash[item] == nil
                new_hash[item] = 1
            else
                new_hash[item] += 1
            end
        end
        new_hash
    end

end