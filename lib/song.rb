class Song
  @@count = 0
  
  @@genres  = []
  @@artists = []

  @@genre_count = {"rap" => 0, "rock" => 0, "pop" => 0}
  @@artist_count = {"Jay-Z" => 0, "Drake" => 0, "Beyonce" => 0}

  attr_reader :name, :artist, :genre

  def initialize(name, artists, genres)
    @name = name
    @artist = artists
    @genre = genres
    @@count += 1
    @@genres << @genre
    @@artists << @artist
    @@genre_count[@genre] += 1
    @@artist_count[@artist] += 1
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
