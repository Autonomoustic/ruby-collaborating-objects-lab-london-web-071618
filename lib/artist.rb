class Artist
  
  @@artists = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end
  
  def self.all
    @@artists
  end
  
  def song
    @@artists << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
  end
end