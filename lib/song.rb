require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

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
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    # binding.pry
    @@genres.each do |genre|
      # if @@genre_count.has_key?(genre)
      #   @@genre_count[genre] += 1
      # else
        @@genre_count[genre] = @@genres.count(genre)
      # end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
end
