class Song
  @@count = 0
  @@genre  = []

  def initialize(name, artists, genres)
    @name = name
    @artist = artists
    @genre = genres
    @@count += 1


  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end
end
