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
    genre_counting
    artist_counting
  end

  def genre_counting
    if @@genre_count.has_key?(@genre)
      @@genre_count[@genre] = 1
    else
      @@genre_count[@genre] += 1
    end
  end
  def artist_counting
    if @@artist_count.has_key?(@artist)
      @@artist_count[@artist] = 1
    else
      @@artist_count[@artist] += 1
    end
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
