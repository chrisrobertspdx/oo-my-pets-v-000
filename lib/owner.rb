class Owner
  # code goes here
 attr_reader :species
 attr_accessor :name :pets

  @@all = []

  def initialize()
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    puts "I am a #{species}"
  end



  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

end
