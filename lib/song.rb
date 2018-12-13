require "pry"

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
      result = Hash.new(0)
      @@genres.each do |genre|
      result[genre] += 1
      # result = {}
      # result = {"rap" => 1 , "jazz" => 1}
      end
      result
  end

  #returns an Hash of artists and the number of songs that they have

  def self.artist_count
    result = Hash.new(0)
    @@artists.each do |artist|
    result[artist] += 1
    # result = {}
    # result = {"rap" => 1 , "jazz" => 1}
    end
    result
  end

end #end of song class
