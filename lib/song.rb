class Song
  @@count = 0
  @@genre  = []

  def initialize(name, artists, genres)
    @name = name
    @artist = artists
    @genres = genres
    @@count += 1


  end

  def name
    @name
  end
end
