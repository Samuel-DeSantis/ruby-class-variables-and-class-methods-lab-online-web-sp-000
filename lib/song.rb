class Song
  @@count = 0

  @@genres  = []
  @@artists = []

  @@genre_count = {}
  @@artist_count = {}

  attr_reader :name, :artist, :genre

  def initialize(name, artists, genres)
    @name = name
    @artist = artists
    @genre = genres

    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def create_genre_count
    @@genre.uniq.each { |genre| genre_count[genre] = 1 }
  end

  def fill_genre_count
    @@genre.uniq.each { |genre| genre_count[genre] += 1}
  end

  def create_artist_count
    @@artist.uniq.each { |artist| artist_count[genre] = 1 }
  end

  def fill_artist_count
    @@artist.uniq.each { |artist| artist_count[artist] += 1}
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count
  end

end
