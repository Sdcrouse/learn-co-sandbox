 class Song
  puts "This only gets executed once!"
  
  @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    # @@all << self
    self.class.all << self # This works despite the fact that #self.all is defined BELOW.
  end
 
  def self.all # This won't do anything until it is actually called.
  # It will NOT get executed when the Song class is first defined.
  # However, it WILL get defined with the rest of the Song class before a new Song is made.
  # That is why it is OK to define this method AFTER #initialize.
    @@all
  end
  
  def self.print_all_song_names 
    puts self.all.map {|song| song.name}
  end
end

puts "What is the order of execution here?"
# Answer: the #puts statement at the top of the Song class,
# then the #puts statement above this comment, then the code below.
# The #puts statement in the Song class only gets executed the first time that the Song class is defined!
puts "This gets executed next, and then the thriller Song is defined."
thriller = Song.new("Thriller")
puts "This gets executed after that!"
yellow_submarine = Song.new("Yellow Submarine")
god_of_wonders = Song.new("God of Wonders")
jingle_bells = Song.new("Jingle Bells")

Song.print_all_song_names #=> Thriller, Yellow Submarine, God of Wonders, Jingle Bells