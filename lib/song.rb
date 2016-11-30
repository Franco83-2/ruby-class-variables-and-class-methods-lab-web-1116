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
    totals = {}
    @@genres.each do |genre|
      totals[genre] ||= 0
      totals[genre]= totals[genre]+1
    end
    totals
  end

    def self.artist_count
    totals = {}
    @@artists.each do |artist|
      totals[artist] ||= 0
      totals[artist]= totals[artist]+1
    end
    totals
  end

end