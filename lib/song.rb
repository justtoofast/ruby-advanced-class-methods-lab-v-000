class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    def initialize(song)
      @song = song
      @@all << self
    end
    song
  end
end
