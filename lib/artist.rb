class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    self.songs << song 
  end
  
  def save
    @@all << self 
  end
  
  def self.all
    @@all
  end 
  
  def self.find_by_name(name)
    @@all.detect {|artist| artist.name == name }
  end 
  
  def self.create_by_name(name)
    Artist.new(name).tap {|artist| artist.save}
    #artist = Artist.new(name)
    #artist.save
    #artist
  end 
  
  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end 
end
