class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    parse = filename.split(" - ")
    artist = Artist.find_or_create_by_name(parse[0])
  end

end
