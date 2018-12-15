require 'pry'
 class Song
   attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
   def initialize(song_name,artist,genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
   def self.count
    @@count
  end
   def self.artists
    @@artists.uniq
  end
   def self.genres
    @@genres.uniq
  end
   def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end
   def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end
 end 


# class Song
#   @@count = 0
#
#   def self.count
#     @@count
#   end
#
#
#   @@genres = []
#
#   def self.genres
#     @@genres.uniq
#   end
#
#
#
#
#   @@artist = []
#
#   def self.artists
#     @@artists.uniq
#   end
#
#
#
#
#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@all << self
#     @@count +=1
#     # @@artist << artist
#     # @@genres << genre
#     end
#     attr_accessor :name, :artist, :genre
#   end
#
#   def self.genre_count
#     genre_count = {}
#   @@genres.each do |genre|
#     if genre_count[genre]
#       genre_count[genre] += 1
#     else
#       genre_count[genre] = 1
#     end
#   end
#   genre_count
# end
#
#
# def self.artist_count
#   artist_count = {}
#   @@artists.each do |artist|
#     if artist_count[artist]
#       artist_count[artist] += 1
#     else
#       artist_count[artist] = 1
#     end
#   end
#   artist_count
# end
#










# def self.genres
# @@genres.each do|genre|
#      if genre != @genre
#        @@genre << self
#        return @@genre
#      end
#    end
#
#    def
