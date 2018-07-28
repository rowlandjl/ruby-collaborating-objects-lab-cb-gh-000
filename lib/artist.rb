class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    self.songs << name
  end

  def find_or_create_by_name(name)
  end

end
