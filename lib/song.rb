class Song
  @@count = 0
  @@genres  = []
  @@artists = []

  attr_reader :name, :artist, :genre

  def initialize(name, artists, genres)
    @name = name
    @artist = artists
    @genre = genres
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end


end
