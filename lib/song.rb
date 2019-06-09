class Song
  attr_accessor :name, :artist_name

  @@all = []

  def self.all
    @@all
  end

  def self.create
    #Initialize a song object and save it to @@all through Song.all
    self.all << self.new
  end

  def save
    #Places a Song instance object into @@all
    self.class.all << self
  end
end
