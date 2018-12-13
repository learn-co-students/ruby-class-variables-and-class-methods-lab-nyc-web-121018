class Song

@@count = 0

def self.count
  @@count
end

@@ genres = []

def self.genres
@genres.uniq
end

@@artists = []
def.self.artists
  @@artists.uniq
end

def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @@artists << artists
  @genre = genre
  @@genres << genres
  @@count += 1
end

   attr_accessor :name, :artist, :genre

end
