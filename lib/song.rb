class Song
  @@count = 0
  @@genre  = []

  attr_reader :name, :artist, :genre

  def initialize(name, artists, genres)
    @name = name
    @artist = artists
    @genre = genres
    @@count += 1
  end


end
