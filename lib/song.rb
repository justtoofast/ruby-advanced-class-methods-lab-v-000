class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create
    def initialize(song)
      @song = song
      @@all << song
    end
    song
  end
end
