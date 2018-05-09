=begin
class Song
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
    self
  end 
end
=end 

    