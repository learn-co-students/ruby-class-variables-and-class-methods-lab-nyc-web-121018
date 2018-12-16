class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @@artists << artist
  @genre = genre
  @@genres << genre
  @@count += 1
end


def self.count
  @@count
end

#
# is a class method that returns a unique array of genres of existing songs
def self.genres
@@genres.uniq # removes duplicate elements from arrya in Ruby
end



def self.artists
  @@artists.uniq
end

def self.artist_count
  artist_count  = {}
end


#returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre
def self.genre_count
  genre_count = {}
  @@genre.each do { |genre|
    if genre_count [genre] += 1
      genre_count[genre] += 1
      else
        genre_count [genre] = 1
        end
        genre_count
end



end
