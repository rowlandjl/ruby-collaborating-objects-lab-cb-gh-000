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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    result = self.all.detect { |a| a.name == name }
    if result == nil
      artist = Artist.new(name)
      result = artist
      artist.save
    end
    result
  end

  def print_songs
    self.songs.each { |s| puts s.name }
  end 

end
