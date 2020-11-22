class Song
  @@album_count = 0
  @@artist =[]

  def initialize(name, artists, genres)
    @@alubm_count += 1
    @@artist << artists
  end

  def self.count
    @@album_count
  end

  def self.artists
    @@artist
  end

  def self.genres
    @@genres
  end
end
