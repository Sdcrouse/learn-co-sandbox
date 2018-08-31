class Song
 
  @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.print_all_song_names 
    self.all.each {|song| puts song.name}
  end
end

thriller = Song.new("Thriller")
yellow_submarine = Song.new("Yellow Submarine")
god_of_wonders = Song.new("God of Wonders")
jingle_bells = Song.new("Jingle Bells")

Song.print_all_song_names #=> Thriller, Yellow Submarine, God of Wonders, Jingle Bells