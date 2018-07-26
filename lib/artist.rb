class Artist
  
  @@all = []
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
      test = @@all.find {|artist| artist.name == name}
      if !!test == true
        return test
      else
        return Artist.new(name)
      end
  end
  
  
  def print_songs
    @songs.map {|s| puts s.name}
  end
    
end