class Song

attr_accessor :name, :artist, :genre

@@count = 0 #number of new songs created
@@artists =[]
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

def self.count
  @@count
end

def self.genres
  @@genres
  @@genres.!include?(self) << self #needs to be a unique genre
end

def self.artists
  @@artists
  @@artists.!include?(self) << self #needs to be a unique genre
end

def self.genre_count
  genre_counter = {}
  @@genres.each do |genre|
    genre_counter[genre] = self.count
  end
end

def self.artist_count
  artist_counter = {}
  @@genres.each do |genre|
    genre_counter[genre] = self.count
end

end
