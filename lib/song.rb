lass Song
  attr_accessor :name, :artist_name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    #Places a Song instance object into @@all
    self.class.all << self
  end

  def self.create
    #instantiates and saves the song, and it returns the new song that was created
    song = self.new
    self.all << song
    return song
  end

  def self.new_by_name(name)
    self.new(name)
  end
end